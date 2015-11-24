class CreateDrinks < ActiveRecord::Migration
  def up	
    create_table :drinks do |t|
      t.string :name
      t.string :size

      t.timestamps null: false
    end
  end
  def down
  	drop_table :drinks
  end
end
