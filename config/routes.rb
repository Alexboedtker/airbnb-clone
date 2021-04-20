Rails.application.routes.draw do
  root to: 'pages#home'
  resources :puzzles, only: [:index, :new, :create]
end
