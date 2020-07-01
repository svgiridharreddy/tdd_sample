class RenameTweetTagsTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :tweet_tags, :tweettags
  end
end
