class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    drop_table :tweets
    create_table :tweets do |t|
      t.string :body

      t.timestamps
    end
  end
end
