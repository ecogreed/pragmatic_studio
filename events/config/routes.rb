Rails.application.routes.draw do
    root "events#index"
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   # get "events" => "events#index"
   # get "events/:id" => "events#show", as: "event"
   # get "events/:id/edit" => "events#edit", as: "edit_event"
   # patch "events/:id" => "events#update"
    resources :events
end
