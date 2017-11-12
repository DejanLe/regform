# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171110191303) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personnel_infos", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "middle_initial"
    t.string "title"
    t.integer "employee_id"
    t.string "D_O_B"
    t.integer "SSN_last_4_digit"
    t.boolean "sex_male"
    t.boolean "sex_female"
    t.integer "manager_sponsor__home_dept_id"
    t.string "Dept_Name"
    t.string "Job_Code_"
    t.boolean "HCW1"
    t.boolean "HCW2"
    t.boolean "HCW3"
    t.boolean "IHCW"
    t.boolean "NHCW"
    t.boolean "Business"
    t.boolean "Clinical"
    t.boolean "Education"
    t.boolean "Student"
    t.boolean "Research"
    t.boolean "Clinical_Research"
    t.boolean "Research_Collaborator_collab_type"
    t.boolean "Basic_Research"
    t.boolean "Full_Time"
    t.boolean "Part_Time"
    t.boolean "Per_Diem"
    t.boolean "Temp_Student_Contract"
    t.date "Empl_begin_date"
    t.date "Empl_end_date"
    t.string "Work_Location_Building_Floor_Room"
    t.string "Work_Phone"
    t.string "Practice_Address_if_applicable_street_city"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_personnel_infos_on_client_id"
  end

  create_table "requests", force: :cascade do |t|
    t.string "date_of_request"
    t.boolean "new_account"
    t.boolean "change_privileges"
    t.boolean "disable_account"
    t.boolean "re_enable_account"
    t.boolean "mc"
    t.boolean "hmfp"
    t.boolean "apg"
    t.boolean "ap_hmfp"
    t.boolean "mc_corporate"
    t.boolean "other"
    t.text "specify"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_requests_on_client_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
