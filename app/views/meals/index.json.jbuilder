json.array!(@meals) do |meal|
  json.extract! meal, :id, :name, :time
  json.url meal_url(meal, format: :json)
end
