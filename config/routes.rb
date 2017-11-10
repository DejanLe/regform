Rails.application.routes.draw do
  
  resources :clients do
  	resources :personnel_infos
  	resources :requests
  end
  root "clients#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
