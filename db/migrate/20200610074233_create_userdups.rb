class CreateUserdups < ActiveRecord::Migration[5.2]
  def change
    create_table :userdups do |t|
      t.string :email
      t.string :name
      t.string :phone_number
      t.string :country_code

      t.timestamps
    end
  end
end
