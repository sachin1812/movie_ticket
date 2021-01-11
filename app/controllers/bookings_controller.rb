class BookingsController < ApplicationController
  before_action :get_booking, only: %i[show destroy]

  def initiate_booking
    @screening_detail = ScreeningDetail.find_by(movie_id: params[:id])
    @movie = @screening_detail.movie
    @screen = @screening_detail.screen
    @seat_plan = @screen.seat_plans
    @booked_seats = @screening_detail.bookings.pluck(:seat_number).flatten
  end

  def process_booking
    params_hash = seat_booking_params.to_h
    if current_user && params_hash.key?(:seat)
      ActiveRecord::Base.transaction do
        booking_record = current_user.bookings.create(
          screening_detail_id: params_hash[:screening_details_id],
          booking_amount: params_hash[:ticket_total],
          seat_number: params_hash[:seat].keys
        )
        redirect_to booking_path(booking_record.id)
      end
    else
      redirect_to new_user_session_path
    end
  end

  def show
    @screening_detail = @booking.screening_detail
    @screen_name = @screening_detail.screen.name
    @time = @screening_detail.slot.start_end_time
    @date = @screening_detail.screening_date
    @seat_numbers = @booking.seat_number.join(', ')
    @movie = @screening_detail.movie
    @price = @booking.booking_amount
  end

  def destroy
    @booking&.destroy
    flash[:notice] = 'Booking cancelled!'
    redirect_to my_account_path
  end

  def seat_booking_params
    params.permit(:screening_details_id, :ticket_total, seat: {})
  end

  def get_booking
    @booking = Booking.find_by(id: params[:id])
  end
end
