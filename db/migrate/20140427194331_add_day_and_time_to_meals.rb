class AddDayAndTimeToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :day_and_time, :datetime
  end
end
