puts "\n---------- Creating User ----------\n"
User.create(email: 'admin@test.com', password: 'Admin@123', role: 1)
User.create(email: 'user@test.com', password: 'User@123', name: 'test user', role: 0)

puts "\n---------- Creating Movies ----------\n"
movie1 = Movie.create(title: 'Movie 1', duration: "2h 35m")
movie2 = Movie.create(title: 'Movie 2', duration: "1h 45m")
movie3 = Movie.create(title: 'Movie 3', duration: "2h 05m",)
movie4 = Movie.create(title: 'Movie 4', duration: "2h 15m",)

puts "\n---------- Creating Movie slots ----------\n"
slot1 = Slot.create(start_time: "12 PM", end_time: "03 PM")
slot2 = Slot.create(start_time: "03 PM", end_time: "06 PM")
slot3 = Slot.create(start_time: "06 PM", end_time: "09 PM")
slot4 = Slot.create(start_time: "09 PM", end_time: "12 AM")

puts "\n---------- Creating Screen ----------\n"
screen1 = Screen.create(name: 'Screen 1')
screen2 = Screen.create(name: 'Screen 2')
screen3 = Screen.create(name: 'Screen 3')
screen4 = Screen.create(name: 'Screen 4')

puts "\n------ Creating Screening detail ---\n"
ScreeningDetail.create(movie_id: movie1.id, screen_id: screen1.id, slot_id: slot1.id, screening_date: Date.today)
ScreeningDetail.create(movie_id: movie2.id, screen_id: screen2.id, slot_id: slot2.id, screening_date: Date.today)
ScreeningDetail.create(movie_id: movie3.id, screen_id: screen3.id, slot_id: slot3.id, screening_date: Date.today)
ScreeningDetail.create(movie_id: movie4.id, screen_id: screen4.id, slot_id: slot4.id, screening_date: Date.today)

puts "\n---------- Creating Seat Plan ----------\n"
seat_plan = []
seat_plan << SeatPlan.create(row: 'A', seat_type: 'Gold', price: 400).id
seat_plan << SeatPlan.create(row: 'B', seat_type: 'Gold', price: 400).id
seat_plan << SeatPlan.create(row: 'C', seat_type: 'Gold', price: 400).id
seat_plan << SeatPlan.create(row: 'D', seat_type: 'Silver', price: 300).id
seat_plan << SeatPlan.create(row: 'E', seat_type: 'Silver', price: 300).id
seat_plan << SeatPlan.create(row: 'F', seat_type: 'Silver', price: 300).id
seat_plan << SeatPlan.create(row: 'G', seat_type: 'Silver', price: 300).id
seat_plan << SeatPlan.create(row: 'H', seat_type: 'Bronze', price: 200).id
seat_plan << SeatPlan.create(row: 'I', seat_type: 'Bronze', price: 200).id

puts "\n---------- Assign screen to seat seat_plan ----------\n"
screen1.seat_plan_ids = seat_plan
screen2.seat_plan_ids = seat_plan
screen3.seat_plan_ids = seat_plan
screen4.seat_plan_ids = seat_plan
