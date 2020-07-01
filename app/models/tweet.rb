class Tweet < ApplicationRecord
  has_many :tweet_tags, class_name: "TweetTag",dependent: :destroy
  has_many :tags, through: :tweet_tags
  belongs_to :user
end
