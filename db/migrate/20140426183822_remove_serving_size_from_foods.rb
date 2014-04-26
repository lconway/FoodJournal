class RemoveServingSizeFromFoods < ActiveRecord::Migration
  def change
    remove_column :foods, :serving_size, :decimal
  end
end
