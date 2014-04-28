class RemoveTimeFromMeals < ActiveRecord::Migration
  def change
    remove_column :meals, :time, :date
  end
end
