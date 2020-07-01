class AddPasswordToUserdups < ActiveRecord::Migration[5.2]
  def change
    add_column :userdups, :password, :string
    change_column :userdups,:phone_number,:integer
  end
end
