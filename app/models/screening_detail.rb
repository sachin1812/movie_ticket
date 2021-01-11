class ScreeningDetail < ApplicationRecord
  belongs_to :movie
  belongs_to :screen
  belongs_to :slot
  has_many :bookings
end
