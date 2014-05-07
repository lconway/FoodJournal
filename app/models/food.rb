class Food < ActiveRecord::Base
	has_many :users_foods
	has_many :users, through: :users_foods

	validates :name, presence: true
	validates :calories, presence: true
	validates :serv_per_container, presence: true
end
