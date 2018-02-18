Rails.application.routes.draw do
  get 'reviews/new'

  get 'reviews/create'

  resources :cocktails do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  resources :reviews, only: [:destroy]
  root to: "cocktails#index"
end
