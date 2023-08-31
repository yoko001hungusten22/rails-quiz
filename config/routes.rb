Rails.application.routes.draw do
    root to:"static_pages#home"
    
    resources :studies do
      member do
        get 'study_results', to: 'studies#study_results'
        post 'toggle_understood', to: 'studies#toggle_understood'
      end
    end
    
    get "/all", to:"categories#index"
    get "/categories/:id", to: "categories#show"
    
    devise_for :users, controllers: {
      registrations: "users/registrations",
      sessions: "users/sessions",
      passwords: "users/passwords",
      confirmations: "users/confirmations"
    }
end