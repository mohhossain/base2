Rails.application.routes.draw do
  get 'questions/index'
  get 'questions/show'
  get 'questions/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :questions 
  resources :answers 
  resources :reaction
end
