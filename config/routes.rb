Rails.application.routes.draw do
  root 'twittters#index', as: 'home'
  resources :twittters
end
