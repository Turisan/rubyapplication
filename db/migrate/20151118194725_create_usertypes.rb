class CreateUsertypes < ActiveRecord::Migration
  def up
    create_table :usertypes do |t|
		t.string :admin_user
		t.string :company_user
		t.string :basic_user
		t.integer :ability_id
		
      t.timestamps null: false
    end
  end
  def down
      drop_table :user_types
  end
end
