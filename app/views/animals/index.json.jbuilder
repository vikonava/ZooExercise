json.array!(@animals) do |animal|
  json.extract! animal, :id, :zoo_id, :name, :species
  json.url animal_url(animal, format: :json)
end
