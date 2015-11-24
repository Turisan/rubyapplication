class CreateResources < ActiveRecord::Migration
  def up
    create_table :resources do |t|
		t.string :resource_name, :limit => 50, :null => false
		t.string :resource_type, :limit => 50, :null => false
		t.string :description, :limit => 200, :null => false
		t.integer :user_id 
		t.text :commnet, :limit => 200, :null => false
		
      t.timestamps null: false
    end
  end
  def down
      drop_table :resources
  end
end
