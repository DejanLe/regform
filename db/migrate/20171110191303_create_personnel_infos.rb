class CreatePersonnelInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :personnel_infos do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_initial
      t.string :title
      t.integer :employee_id
      t.string :D_O_B
      t.integer :SSN_last_4_digit
      t.boolean :sex_male
      t.boolean :sex_female
      t.integer :manager_sponsor__home_dept_id
      t.string :Dept_Name
      t.string :Job_Code_
      t.boolean :HCW1
      t.boolean :HCW2
      t.boolean :HCW3
      t.boolean :IHCW
      t.boolean :NHCW
      t.boolean :Business
      t.boolean :Clinical
      t.boolean :Education
      t.boolean :Student
      t.boolean :Research
      t.boolean :Clinical_Research
      t.boolean :Research_Collaborator_collab_type
      t.boolean :Clinical_Research
      t.boolean :Basic_Research
      t.boolean :Full_Time
      t.boolean :Part_Time
      t.boolean :Per_Diem
      t.boolean :Temp_Student_Contract
      t.date :Empl_begin_date
      t.date :Empl_end_date
      t.string :Work_Location_Building_Floor_Room
      t.string :Work_Phone
      t.string :Practice_Address_if_applicable_street_city
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
