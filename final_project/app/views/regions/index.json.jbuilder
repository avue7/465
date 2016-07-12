json.array!(@regions) do |region|
  json.extract! region, :id, :climate_id, :state_abbreviation, :state_id, :drought_id
  json.url region_url(region, format: :json)
end
