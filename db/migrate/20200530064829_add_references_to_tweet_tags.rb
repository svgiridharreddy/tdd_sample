class AddReferencesToTweetTags < ActiveRecord::Migration[5.2]
  def change
    add_reference :tweet_tags, :tweet, foreign_key: true
    add_reference :tweet_tags, :tag, foreign_key: true
  end
end
