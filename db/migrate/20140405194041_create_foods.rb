class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :serving_size
      t.decimal :serv_per_container
      t.integer :calories
      t.decimal :fat
      t.decimal :sodium
      t.decimal :carbs
      t.decimal :sugar
      t.decimal :protein

      t.timestamps
    end
  end
end
