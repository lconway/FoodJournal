class User < ActiveRecord::Base
	has_many :users_foods
	has_many :foods, through: :users_foods
	has_many :meals
	scope :names, -> { pluck :firstname }
end
