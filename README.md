  
gem 'devise', '~> 4.3'
rails generate devise:install

config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }



rails generate devise user

rails db:migrate
rails generate devise:views

  
 -user (create account than) add
	- request form
	- add personal information

 (model user)

rails g scaffold client name:string
 

 (model request )
rails g scaffold request date_of_request:string new_account:boolean change_privileges:boolean change_privileges:boolean disable_account:boolean re_enable_account:boolean mc:boolean   hmfp:boolean apg:boolean ap_hmfp:boolean mc_corporate:boolean other:boolean specify:text client:references

(model personal info)

rails g scaffold personnel_info last_name:string first_name:string middle_initial:string title:string employee_id:integer D_O_B:string SSN_last_4_digit:integer sex_male:boolean sex_female:boolean manager_sponsor__home_dept_id:integer Dept_Name:string Job_Code_:string HCW1:boolean HCW2:boolean HCW3:boolean IHCW:boolean NHCW:boolean  Business:boolean Clinical:boolean Education:boolean Student:boolean Research:boolean Clinical_Research:boolean Research_Collaborator_collab_type:boolean Clinical_Research:boolean Basic_Research:boolean Full_Time:boolean Part_Time:boolean Per_Diem:boolean Temp_Student_Contract:boolean Empl_begin_date:date Empl_end_date:date Work_Location_Building_Floor_Room:string Work_Phone:string Practice_Address_if_applicable_street_city:string client:references
  
    
  
  #for windows devise


 gem 'bcrypt', git: 'https://github.com/codahale/bcrypt-ruby.git', :require => 'bcrypt'





  <% if request.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(request.errors.count, "error") %> prohibited this request from being saved:</h2>

      <ul>
      <% request.errors.full_messages.each do |message| %>
        <li><%= message %></li>
      <% end %>
      </ul>
    </div>
  <% end %>


    <% if personnel_info.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(personnel_info.errors.count, "error") %> prohibited this personnel_info from being saved:</h2>

      <ul>
      <% personnel_info.errors.full_messages.each do |message| %>
        <li><%= message %></li>
      <% end %>
      </ul>
    </div>
  <% end %>

  ############################################################################################
 rails routes
                    Prefix Verb   URI Pattern                                            Controller#Action
          new_user_session GET    /users/sign_in(.:format)                               devise/sessions#new
              user_session POST   /users/sign_in(.:format)                               devise/sessions#create
      destroy_user_session DELETE /users/sign_out(.:format)                              devise/sessions#destroy
         new_user_password GET    /users/password/new(.:format)                          devise/passwords#new
        edit_user_password GET    /users/password/edit(.:format)                         devise/passwords#edit
             user_password PATCH  /users/password(.:format)                              devise/passwords#update
                           PUT    /users/password(.:format)                              devise/passwords#update
                           POST   /users/password(.:format)                              devise/passwords#create
  cancel_user_registration GET    /users/cancel(.:format)                                devise/registrations#cancel
     new_user_registration GET    /users/sign_up(.:format)                               devise/registrations#new
    edit_user_registration GET    /users/edit(.:format)                                  devise/registrations#edit
         user_registration PATCH  /users(.:format)                                       devise/registrations#update
                           PUT    /users(.:format)                                       devise/registrations#update
                           DELETE /users(.:format)                                       devise/registrations#destroy
                           POST   /users(.:format)                                       devise/registrations#create
                      root GET    /                                                      requests#new
      unauthenticated_root GET    /                                                      devise/sessions#new
    client_personnel_infos GET    /clients/:client_id/personnel_infos(.:format)          personnel_infos#index
                           POST   /clients/:client_id/personnel_infos(.:format)          personnel_infos#create
 new_client_personnel_info GET    /clients/:client_id/personnel_infos/new(.:format)      personnel_infos#new
edit_client_personnel_info GET    /clients/:client_id/personnel_infos/:id/edit(.:format) personnel_infos#edit
     client_personnel_info GET    /clients/:client_id/personnel_infos/:id(.:format)      personnel_infos#show
                           PATCH  /clients/:client_id/personnel_infos/:id(.:format)      personnel_infos#update
                           PUT    /clients/:client_id/personnel_infos/:id(.:format)      personnel_infos#update
                           DELETE /clients/:client_id/personnel_infos/:id(.:format)      personnel_infos#destroy
           client_requests GET    /clients/:client_id/requests(.:format)                 requests#index
                           POST   /clients/:client_id/requests(.:format)                 requests#create
        new_client_request GET    /clients/:client_id/requests/new(.:format)             requests#new
       edit_client_request GET    /clients/:client_id/requests/:id/edit(.:format)        requests#edit
            client_request GET    /clients/:client_id/requests/:id(.:format)             requests#show
                           PATCH  /clients/:client_id/requests/:id(.:format)             requests#update
                           PUT    /clients/:client_id/requests/:id(.:format)             requests#update
                           DELETE /clients/:client_id/requests/:id(.:format)             requests#destroy
                   clients GET    /clients(.:format)                                     clients#index
                           POST   /clients(.:format)                                     clients#create
                new_client GET    /clients/new(.:format)                                 clients#new
               edit_client GET    /clients/:id/edit(.:format)                            clients#edit
                    client GET    /clients/:id(.:format)                                 clients#show
                           PATCH  /clients/:id(.:format)                                 clients#update
                           PUT    /clients/:id(.:format)                                 clients#update
                           DELETE /clients/:id(.:format)                                 clients#destroy


  