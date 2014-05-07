require 'spec_helper'

describe Food do
	let(:no_name_food) {Food.new(calories: 100, serv_per_container: 1)}
	let(:no_calories_food) {Food.new(name: "banana", serv_per_container: 1)}
	let(:no_serv_per_container_food) {Food.new(name: "banana", calories: 100)}

	context "testing food name validation" do
		it "will be invalid when it does not have a name" do
			expect(no_name_food.valid?).to be_false
		end

		it "will be valid when it has a food name" do
			no_name_food.name = "apple"
			expect(no_name_food.valid?).to be_true
		end
	end

	context "testing calorie validation" do
		it "will be invalid when it does not have calories" do
			expect(no_calories_food.valid?).to be_false
		end

		it "will be valid when it does have a calories" do
			no_calories_food.calories = "80"
			expect(no_calories_food.valid?).to be_true
		end
	end

	context "testing serv_per_container validation" do
		it "will be invalid when it does not have serv_per_container" do
			expect(no_serv_per_container_food.valid?).to be_false
		end

		it "will be valid when it does have serv_per_container" do
			no_serv_per_container_food.serv_per_container = 1
			expect(no_serv_per_container_food.valid?).to be_true
		end
	end
end
