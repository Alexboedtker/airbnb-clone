Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :puzzles, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create]
  end
  get   'my_puzzles', to: 'puzzles#my_puzzles'
  get   'my_bookings', to: 'bookings#my_bookings'
end

