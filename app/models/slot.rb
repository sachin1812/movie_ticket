class Slot < ApplicationRecord
 validates :start_time, :end_time, presence: true

 def start_end_time
   "#{start_time} - #{end_time}"
 end
end
