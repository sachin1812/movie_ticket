require 'rails_helper'

RSpec.describe ScreeningDetail, type: :model do
  let(:movie_1) do
    Movie.new(title: 'Movie1', duration: "2h 35m")
  end

  let(:screen_1) do
    Screen.new(name: 'Screen 1')
  end

  let(:slot_1) do
    Slot.new(start_time: '12PM', end_time: '3PM')
  end

  let(:screening_detail_1) do
    ScreeningDetail.new(movie: movie_1, screen: screen_1, slot: slot_1, screening_date: '2021-01-10')
  end

  before do
    movie_1.save!
    slot_1.save!
    screen_1.save!
    screening_detail_1.save!
  end
end
