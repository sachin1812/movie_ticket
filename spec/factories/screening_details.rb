FactoryBot.define do
  factory :screening_detail do
    movie_id { 1 }
    screen_id { 1 }
    slot_id { 1 }
    screening_date { "2021-01-09 12:12:12" }
  end
end
