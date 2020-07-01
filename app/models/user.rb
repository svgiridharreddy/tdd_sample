class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable,
          :omniauthable,omniauth_providers: [:facebook,:github,:twitter]
  has_many :tweets, dependent: :destroy
  has_many :follows

  has_many :follower_relationships,foreign_key: :following_id,class_name: "Follow"
  has_many :followers,through: :follower_relationships,source: :follower

  has_many :following_relationships,foreign_key: :user_id,class_name: "Follow"
  has_many :following,through: :following_relationships,source: :following
  has_one_time_password length: 6
  validates :user_name, presence: true
  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider,uid: provider_data.uid).first_or_create do |user|
      user.provider = provider_data.info.email
      user.password = Devise.friendly_token[0, 20]
      user.skip_confirmation!
    end
  end

end
