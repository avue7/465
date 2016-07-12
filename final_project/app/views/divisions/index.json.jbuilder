json.array!(@divisions) do |division|
  json.extract! division, :id, :state_id, :drought_id
  json.url division_url(division, format: :json)
end
