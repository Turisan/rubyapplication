class CreateContacts < ActiveRecord::Migration
  def up
    create_table :contacts do |t|
		t.string :phone
		t.string :phone_type 
		t.string :website, 		:limit => 100, :null => false		
		t.string :email, 	 	:limit => 50, :null => false
		t.string :contact_name, :limit => 50, :null => false
		t.integer :company_id
		
      t.timestamps null: false
    end
  end
  def down
      drop_table :contacts
  end
end
