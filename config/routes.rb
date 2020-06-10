Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }

  devise_scope :user do
    get 'destinations', to: 'users/registrations#new_destination'
    post 'destinations', to: 'users/registrations#create_destination'
  end

  
  root 'items#index'
  resources :users do
  resources :items, only: [:show, :new]

  collection do
  get 'card'
  get 'logout'
  end
  end
end
