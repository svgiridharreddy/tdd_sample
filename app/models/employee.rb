class Employee < ApplicationRecord
	has_many :locations,dependent: :destroy
	has_one :salary,dependent: :destroy

	accepts_nested_attributes_for :locations,:salary
end
