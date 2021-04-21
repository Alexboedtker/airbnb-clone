Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :puzzles, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create]
  end
  get   'my_puzzles', to: 'puzzles#my_puzzles'
end


=begin

puzzle_bookings POST   /puzzles/:puzzle_id/bookings           bookings#create
new_puzzle_booking GET    /puzzles/:puzzle_id/bookings/new    bookings#new

=end
