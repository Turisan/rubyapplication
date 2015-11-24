class CreateCompanies < ActiveRecord::Migration
  def up
    create_table :companies do |t|
		t.string 	:company_name, :limit => 100, :null => false
		t.string 	:company_hours, :limit => 50, :null => false
		t.integer 	:resource_id
		
		t.timestamps null: false
    end
  end
    def down
      drop_table :companies
  end
end
