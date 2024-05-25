Rails.application.routes.draw do
    root to:"static_pages#home"
    resources :studies
    get "/all", to:"categories#index"
    get "/categories/:id", to: "categories#show"
    post 'score_studies', to: 'studies#score'
    get 'result_studies', to: 'studies#result'
    
    devise_for :users, controllers: {
      registrations: "users/registrations",
      sessions: "users/sessions",
      passwords: "users/passwords",
      confirmations: "users/confirmations"
    }
end