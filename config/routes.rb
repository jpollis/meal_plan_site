Rails.application.routes.draw do
  root 'welcome#home'

  resources :plans
  resources :meals
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
