Rails.application.routes.draw do

  get 'login/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :students
  root 'login#index'
end
