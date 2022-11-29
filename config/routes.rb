Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :matches, only: [:index, :show, :new, :update, :create, :edit] do
    resources :participations, only: [:create, :destroy]
  end
  resources :matches, only: [:destroy]
  resources :teams, only: [:index, :show, :new, :update, :create, :edit]
  resources :votes, only: [:create, :update]
  get "matches/:id/recap", to: "matches#recap"
  # Defines the root path route ("/")
  # root "articles#index"
end
