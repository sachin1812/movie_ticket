Rails.application.routes.draw do
  root to: 'homes#home'
  devise_for :users
  get 'my_account', to: 'users#my_account'

  resources :bookings, only: %i[show destroy]

  get 'initiate_booking', to: 'bookings#initiate_booking'
  post 'process_booking', to: 'bookings#process_booking'

  match 'reports', to: 'reports#reports', via: %i[get post]
end
