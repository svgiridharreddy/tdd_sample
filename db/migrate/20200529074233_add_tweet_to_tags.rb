class AddTweetToTags < ActiveRecord::Migration[5.2]
  def change
    add_reference :tags, :tweet, foreign_key: true
  end
end
