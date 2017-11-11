 
Rails.application.routes.draw do
 
  
devise_for :users
devise_scope :user do
  authenticated :user do
     root :to => 'clients#new' 

  end
  unauthenticated :user do
    root :to => 'devise/sessions#new', as: :unauthenticated_root
  end
end
 resources :clients do
  	resources :personnel_infos
  	resources :requests
  end
    
   
end
