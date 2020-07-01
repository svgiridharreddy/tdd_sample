class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :department
      t.string :doj
      t.string :contact_no

      t.timestamps
    end
  end
end
