# README

# Movie Ticket

#NOTE: Please reload the initiate_booking page once before selecting seat for pricing js to work.

```
URL: http://localhost:3000/initiate_booking?id=1
```

```
.
├── app
│   ├── assets
│   │   ├── config
│   │   │   └── manifest.js
│   │   ├── images
│   │   ├── javascripts
│   │   │   ├── application.js
│   │   │   ├── bookings.js
│   │   │   ├── cable.js
│   │   │   └── channels
│   │   └── stylesheets
│   │       ├── 1st_load_framework.css.scss
│   │       ├── application.css
│   │       ├── bookings.css
│   │       ├── movies.css
│   │       └── seats.css
│   ├── channels
│   │   └── application_cable
│   │       ├── channel.rb
│   │       └── connection.rb
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── bookings_controller.rb
│   │   ├── homes_controller.rb
│   │   ├── movies_controller.rb
│   │   ├── reports_controller.rb
│   │   └── users_controller.rb
│   ├── helpers
│   │   ├── application_helper.rb
│   │   ├── bookings_helper.rb
│   │   ├── movies_helper.rb
│   │   ├── reports_helper.rb
│   │   └── users.helper.rb
│   ├── jobs
│   │   └── application_job.rb
│   ├── mailers
│   │   └── application_mailer.rb
│   ├── models
│   │   ├── application_record.rb
│   │   ├── booking.rb
│   │   ├── concerns
│   │   ├── movie.rb
│   │   ├── screening_detail.rb
│   │   ├── screen.rb
│   │   ├── seat_plan.rb
│   │   ├── slot.rb
│   │   └── user.rb
│   ├── policies
│   │   └── user_policy.rb
│   ├── services
│   └── views
│       ├── bookings
│       │   ├── initiate_booking.html.erb
│       │   ├── _price_with_color.html.erb
│       │   ├── _seat_grid_layout.html.erb
│       │   ├── _seat_total.html.erb
│       │   └── show.html.erb
│       ├── devise
│       │   ├── passwords
│       │   │   ├── edit.html.erb
│       │   │   └── new.html.erb
│       │   ├── registrations
│       │   │   ├── edit.html.erb
│       │   │   └── new.html.erb
│       │   └── sessions
│       │       └── new.html.erb
│       ├── homes
│       │   ├── home.html.erb
│       │   └── index.html.erb
│       ├── layouts
│       │   ├── application.html.erb
│       │   ├── mailer.html.erb
│       │   ├── mailer.text.erb
│       │   ├── _messages.html.erb
│       │   ├── _navigation.html.erb
│       │   └── _nav_links_for_auth.html.erb
│       ├── movies
│       │   └── index.html.erb
│       ├── reports
│       │   ├── _filter.html.erb
│       │   └── reports.html.erb
│       ├── seeats
│       │   └── seats.html.erb
│       └── users
│           ├── index.html.erb
│           ├── my_account.html.erb
│           ├── show.html.erb
│           └── _user.html.erb
├── bin
│   ├── bundle
│   ├── rails
│   ├── rake
│   ├── rspec
│   ├── setup
│   ├── spring
│   └── update
├── config
│   ├── application.rb
│   ├── boot.rb
│   ├── cable.yml
│   ├── database.yml
│   ├── environment.rb
│   ├── environments
│   │   ├── development.rb
│   │   ├── production.rb
│   │   └── test.rb
│   ├── initializers
│   │   ├── application_controller_renderer.rb
│   │   ├── assets.rb
│   │   ├── backtrace_silencers.rb
│   │   ├── cookies_serializer.rb
│   │   ├── devise.rb
│   │   ├── filter_parameter_logging.rb
│   │   ├── inflections.rb
│   │   ├── mime_types.rb
│   │   ├── new_framework_defaults.rb
│   │   ├── pundit.rb
│   │   ├── session_store.rb
│   │   └── wrap_parameters.rb
│   ├── locales
│   │   ├── devise.en.yml
│   │   └── en.yml
│   ├── puma.rb
│   ├── routes.rb
│   ├── secrets.yml
│   └── spring.rb
├── config.ru
├── db
│   ├── development.sqlite3
│   ├── migrate
│   │   ├── 20210109060406_devise_create_users.rb
│   │   ├── 20210109060711_add_name_to_users.rb
│   │   ├── 20210109061506_add_role_to_users.rb
│   │   ├── 20210109061507_create_movies.rb
│   │   ├── 20210109062448_create_slots.rb
│   │   ├── 20210109062618_create_screens.rb
│   │   ├── 20210109063320_create_seat_plans.rb
│   │   ├── 20210109064257_create_screening_details.rb
│   │   ├── 20210109073036_create_bookings.rb
│   │   └── 20210109073255_create_join_table_screen_seat_plans.rb
│   ├── schema.rb
│   ├── seeds.rb
│   └── test.sqlite3
├── Gemfile
├── Gemfile.lock
├── lib
│   └── tasks
├── log
│   └── development.log
├── public
│   ├── 404.html
│   ├── 422.html
│   └── 500.html
├── Rakefile
├── README
├── README.textile
├── spec
│   ├── controllers
│   │   └── bookings_controller_spec.rb
│   ├── factories
│   │   ├── bookings.rb
│   │   ├── movies.rb
│   │   ├── screening_details.rb
│   │   ├── screens.rb
│   │   ├── seat_plans.rb
│   │   ├── slots.rb
│   │   └── users.rb
│   ├── features
│   │   ├── users
│   │   │   └── sign_in_spec.rb
│   │   └── visitors
│   │       └── sign_up_spec.rb
│   ├── models
│   │   ├── booking_spec.rb
│   │   ├── movie_spec.rb
│   │   ├── screening_detail_spec.rb
│   │   ├── slot_spec.rb
│   │   └── user_spec.rb
│   ├── rails_helper.rb
│   ├── spec_helper.rb
│   └── support
│       ├── capybara.rb
│       ├── controller_macros.rb
│       ├── devise.rb
│       ├── factory_bot.rb
│       ├── helpers
│       │   └── session_helpers.rb
│       └── helpers.rb

```

## DB Schema (PostgreSql)
### Tables

```sql

1-bookings (user_id,screening_detail_id,booking_amount,seat_number)

2-movies (title,duration)

3-screening_details (movie_id,screen_id,slot_id,screening_date)

4-screens (name)

5-screens_seat_plans (screen_id,seat_plan_id,)

6-seat_plans (row,number,seat_type,price)

7-slots (start_time,end_time)

8-users (email,encrypted_password,name,role)

```
## URL LIST

```
GET  "/users/sign_in"        #sign in
POST  "/users/sign_up"        #sign Up
```
# To User Account:-

```url
GET  "/my_account"           #User Account
```

# Admin Reports

```url
GET   "/reports"             #User Reports
```

# Rspec Test Cases
```rspec

  "rspec spec/models/user_spec.rb"
  "rspec spec/models/booking_spec.rb"
  "rspec spec/models/movie_spec.rb"
  "rspec spec/models/screening_detail_spec.rb"
  "rspec spec/models/slot_spec.rb"
  "rspec spec/controllers/bookings_controller_spec.rb"
  "rspec spec/features/users/sign_in_spec.rb"
  "rspec spec/features/visitors/sign_up_spec.rb"
```
