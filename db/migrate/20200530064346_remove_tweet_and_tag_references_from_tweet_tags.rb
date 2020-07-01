class RemoveTweetAndTagReferencesFromTweetTags < ActiveRecord::Migration[5.2]
  def change
    rename_table :tweettags,:tweet_tags
    remove_column :tweet_tags,:tweet_id
    remove_column :tweet_tags,:tag_id
  end
end
