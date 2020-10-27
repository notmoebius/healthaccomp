Rails.application.routes.draw do
  resources :keywords
  resources :todos
  resources :actions
  resources :users
  resources :reports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
