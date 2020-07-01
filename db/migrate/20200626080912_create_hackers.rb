class CreateHackers < ActiveRecord::Migration[5.2]
  def change
    create_table :hackers do |t|
      t.string :name
      t.string :age

      t.timestamps
    end
  end
end
