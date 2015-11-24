class CreateLogins < ActiveRecord::Migration
  def up
    create_table :logins do |t|
		t.string :username,	:limit => 50, :null => false
		t.string :password, :limit => 50, :null => false
		t.boolean :read 
		t.boolean :create
		t.boolean :edit
		t.boolean :delete
		
		t.timestamps null: false
    end
  end
    def down
      drop_table :logins
  end
end
