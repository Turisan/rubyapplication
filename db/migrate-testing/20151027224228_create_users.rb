class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
		t.string :user_name, :limit => 50, :null => false
		t.string :user_password, :limit => 50, :null => false
		t.integer :userType_id
		
		t.timestamps null: false
    end
  end
  
  def down
	drop_table :users
  end
 end
