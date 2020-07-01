class Userdup < ApplicationRecord
	# has_secure_password
	validates :name, presence: {message: "User name must be present"},length: {maximum: 255,minimum: 3}
	validates :email, presence: true, format: {with: /\A.+@.+$\Z/ },uniqueness: true
	validates :phone_number,numericality: true, length: {minimum: 10,maximum: 12},presence: {message: "Bad operation!"}
end
