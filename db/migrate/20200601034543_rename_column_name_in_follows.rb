class RenameColumnNameInFollows < ActiveRecord::Migration[5.2]
  def change
    rename_column :follows, :follwing_id, :following_id
  end
end
