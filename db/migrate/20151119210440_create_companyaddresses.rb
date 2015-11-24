class CreateCompanyaddresses < ActiveRecord::Migration
  def up
    create_table :companyaddresses do |t|
		t.integer :company_id
		t.integer :address_id
		
		t.timestamps null: false
    end
  end
  def down
      drop_table :companyaddresses
  end
end
