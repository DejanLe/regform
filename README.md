  
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