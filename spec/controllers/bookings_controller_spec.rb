require 'rails_helper'
require 'active_support/all'
require_relative "../support/devise"
RSpec.describe BookingsController, type: :controller do
  let(:screen) do
    Screen.new(
      "name": 'Screen 1'
    )
  end

  let(:slot) do
    Slot.new(
      "start_time": '12PM',
      "end_time": '3PM'
    )
  end

  let(:movie) do
    Movie.new(
      "title": 'Movie 1',
      "duration": '2h 35m'
    )
  end

  let(:movie_two) do
    Movie.new(
      "title": 'Movie 2',
      "duration": '1h 45m'
    )
  end

  let(:screening_detail) do
    ScreeningDetail.new(
      "movie_id": 1,
      "screen_id": 1,
      "slot_id": 1,
      "screening_date": '2021-01-10'
    )
  end

  let(:booking) do
    {
      user_id: 2,
      screening_detail_id: 1,
      booking_amount: 300.0,
      seat_number: "{A_2,B_2,C_4}"
    }
  end

  let(:bookings) do
    [
      Booking.new(
        user_id: 2,
        screening_detail: screening_detail,
        booking_amount: 300.0,
        seat_number: "{A_2,B_2,C_4}"
      )
    ]
  end

  before do
    movie.save!
    movie_two.save!
    slot.save!
    screen.save!
    screening_detail.save!
    books = bookings
    books.each(&:save!)
  end

  describe 'GET /initiate_booking' do
    login_user
    it 'should run' do
      get :initiate_booking, params: {id: 2}
      expect(response.status).to eq(200)
    end
  end

  describe 'POST /process_booking' do
    login_user
    context 'success' do
      it 'should run' do
        item = booking
        post :process_booking, params: booking
        expect(response.status).to eq(201)
        booking_body = JSON.parse(response.body)
        expect(booking_body['screening_detail_id']).to eq(1)
        expect(booking_body['user_id']).to eq(2)
      end
    end
  end
end
