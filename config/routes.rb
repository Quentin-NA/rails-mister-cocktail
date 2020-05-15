Rails.application.routes.draw do
  get "/", to: "cocktails#index"
  resources :cocktails, only: [:new, :show, :create, :edit, :update, :destroy] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
