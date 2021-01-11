class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :screening_detail
end
