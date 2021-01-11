FactoryBot.define do
  factory :booking do
    user_id { 1 }
    screening_detail_id { 1 }
    booking_amount { "200" }
    seat_number { "{A_1,B_1}" }
  end
end
