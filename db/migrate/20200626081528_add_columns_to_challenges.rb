class AddColumnsToChallenges < ActiveRecord::Migration[5.2]
  def change
  	add_column :challenges, :ques, :text
  	add_column :challenges, :ans, :text
  end
end
