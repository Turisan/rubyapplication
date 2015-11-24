class CreateAddresses < ActiveRecord::Migration
  def up
    create_table :addresses do |t|
		t.integer :company_id 
		t.string :street1, 		:limit => 100, :null => false
		t.string :street2, 		:limit => 100, :null => false
		t.string :city, 		:limit => 50, :null => false
		t.string :state, 		:limit => 50, :null => false
		t.string :zip, 			:limit => 25, :null => false			
		t.string :country, 	 	:limit => 50, :null => false
		t.string :geo_tag,		:limit => 100, :null => false
		
		t.timestamps null: false
    end
  end
  def down
      drop_table :addresses
  end
end
