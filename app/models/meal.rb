class Meal < ActiveRecord::Base
	has_one :user

	scope :lunch, -> { where name: 'lunch' }
end
