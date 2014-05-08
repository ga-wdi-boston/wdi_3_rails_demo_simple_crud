Rails.application.routes.draw do
  root 'players#index'
  resources :players, only: [:index, :show, :new, :create, :edit, :update]
end
