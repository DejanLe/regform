 
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
  
   #new_client_personnel_info GET    /clients/:client_id/personnel_infos/new(.:format)      personnel_infos#new

   
end
