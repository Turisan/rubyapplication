class CreateLoginabilities < ActiveRecord::Migration
  def change
    create_table :loginabilities do |t|
		t.string :login,	:limit => 50, :null => false
		t.string :password, :limit => 50, :null => false
		t.boolean :readaccess
		t.boolean :createaccess
		t.boolean :editaccess
		t.boolean :deleteaccess
		
		t.timestamps null: false
    end
  end
	def down
		drop_table :loginabilities
	end
end
