Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :users
  # resources :questions 
  # resources :answers 
  # resources :reaction

  post "/login", to: "auth#login"
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/post", to: "questions#create"
  get "/questions", to: "questions#index"
  get "/questions/:id", to: "questions#show"
  get "tags/:name", to: "tags#show"
  post "/answers", to: "answers#create"
  get "/answers/:question_id", to: "answers#index"

end
