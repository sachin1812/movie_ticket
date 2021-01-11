FactoryBot.define do
  factory :seat_plan do
    row { "A" }
    number { 1 }
    seat_type { "Gold" }
    price { 200.0 }
  end
end
