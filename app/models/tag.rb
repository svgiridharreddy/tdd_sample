class Tag < ApplicationRecord
  has_many :tweet_tags, class_name: "TweetTag",dependent: :destroy
  has_many :tweets, through: :tweet_tags
end
