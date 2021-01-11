class Movie < ApplicationRecord
  has_many :screens, through: :screening_details

  validates :title, :duration, presence: true
end
