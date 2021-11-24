Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/spices", to: "spice#index"
  # get "/spices/:id", to: "spice#show"
  post "/spices", to: "spice#create"
  patch "/spices/:id", to: "spice#update"
  delete '/spices/:id', to: "spice#destroy"

end
