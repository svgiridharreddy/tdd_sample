class CreateSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :salaries do |t|
      t.integer :salary_amount
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
