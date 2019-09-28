Rails.application.routes.draw do
  root "welcome#index"

  resources :categories, only: :show
end
