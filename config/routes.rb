 Rails.application.routes.draw do
  # get "plants", to: "plants#index"
  # get "plants/:id", to: "plants#show"
  # post "plants", to: "plants#create"
  # delete "plants/:id", to: "plants#destroy"
  # update "plants/:id", to: "plants#update"
  resources :plants, only: [:index, :show, :create, :destroy, :update]
end
