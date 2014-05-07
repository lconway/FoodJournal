class User < ActiveRecord::Base
	has_many :users_foods
	has_many :foods, through: :users_foods
	has_many :meals

	validates :firstname, presence: true
	validates :email, presence: true

	scope :names, -> { pluck :firstname }
end
