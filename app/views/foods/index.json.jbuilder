json.array!(@foods) do |food|
  json.extract! food, :id, :name, :serving_size, :serv_per_container, :calories, :fat, :sodium, :carbs, :sugar, :protein
  json.url food_url(food, format: :json)
end
