class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :type
      t.string :name
      t.string :brand
      t.integer :no_of_wheels

      t.timestamps
    end
  end
end
