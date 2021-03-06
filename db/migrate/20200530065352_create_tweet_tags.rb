class CreateTweetTags < ActiveRecord::Migration[5.2]
  def change
    drop_table :tweet_tags
    create_table :tweet_tags do |t|
      t.references :tweet, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
