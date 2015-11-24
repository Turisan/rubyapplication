class CreateLoginabilities < ActiveRecord::Migration
  def change
    create_table :loginabilities do |t|
		t.string :login,	:limit => 50, :null => false
		t.string :password, :limit => 50, :null => false
		t.boolean :read 
		t.boolean :create
		t.boolean :edit
		t.boolean :delete
      t.timestamps null: false
    end
  end
  def down
      drop_table :loginabilities
  end
end
