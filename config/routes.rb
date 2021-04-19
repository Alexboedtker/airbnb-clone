Rails.application.routes.draw do
  get 'puzzles/index'
  get 'puzzles/new'
  root to: 'pages#home'
  resources :puzzles, only: [:index, :new, :create]
end
