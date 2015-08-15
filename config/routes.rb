Rails.application.routes.draw do
  resources :users, only: [:new, :create]

  root 'landing#index'
end
