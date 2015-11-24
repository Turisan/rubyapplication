class CreateCompanyAddresses < ActiveRecord::Migration
  def change
    create_table :company_addresses do |t|
      t.integer :company_id
      t.integer :address_id
 
      t.timestamps null: false
    end
  end
    def down
      drop_table :company_addresses
  end
end
