class RemoveTweetIdFromTags < ActiveRecord::Migration[5.2]
  def change
    remove_column :tags, :tweet_id, :integer
  end
end
