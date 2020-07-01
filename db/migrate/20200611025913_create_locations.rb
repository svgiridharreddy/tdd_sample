class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :district
      t.string :state
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
