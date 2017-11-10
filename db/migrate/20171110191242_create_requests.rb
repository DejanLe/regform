class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :date_of_request
      t.boolean :new_account
      t.boolean :change_privileges
      t.boolean :change_privileges
      t.boolean :disable_account
      t.boolean :re_enable_account
      t.boolean :mc
      t.boolean :hmfp
      t.boolean :apg
      t.boolean :ap_hmfp
      t.boolean :mc_corporate
      t.boolean :other
      t.text :specify
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
