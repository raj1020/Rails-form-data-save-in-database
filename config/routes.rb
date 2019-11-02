Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "pages#home", as: "root"

  get "/cooks", to: "cooks#index", as: "cook_listings"
  post "/cooks", to: "cooks#create"
  get "/cooks/new", to: "cooks#new", as: "new_cook"
  #get "/listings/:id", to: "listings#show", as: "listing"
  #put "/listings/:id", to: "listings#update"
  #patch "/listings/:id", to: "listings#update"
  #delete "/listings/:id", to: "listings#destroy"
  #get "/listings/:id/edit", to: "listings#edit", as: "edit_listing"

  #get "*path", to: "pages#not_found"

end
