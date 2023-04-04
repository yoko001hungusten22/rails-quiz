Rails.application.routes.draw do
    root to:"studies#index"
    get "/new", to:"studies#new"
    post "/create", to:"studies#create"
    delete "/studies/:id", to:"studies#destroy"
    get "/studies/:id/edit", to:"studies#edit"
    patch "/studies/:id", to:"studies#update"
    get "/studies/:id/show", to:"studies#show"
    get "/all", to:"categories#index"
    get "/categories/:id", to: "categories#show"
end