class SeatPlan < ApplicationRecord
  has_and_belongs_to_many :screens

  validates :row, uniqueness: true
end
