Rails.application.routes.draw do
  root "vehicles#index"
  post "vehicles/search" => "vehicles#search", as: "search_vehicles"
  resources :vehicles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
