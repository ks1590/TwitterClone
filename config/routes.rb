Rails.application.routes.draw do
  root 'twittters#index', as: 'home'
  resources :twittters
  resources :twittters do
    collection do
      post :confirm
    end
  end
end
