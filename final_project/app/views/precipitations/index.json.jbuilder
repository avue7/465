json.array!(@precipitations) do |precipitation|
  json.extract! precipitation, :id, :climate_id, :per_year, :year, :state_abbreviation, :user_id
  json.url precipitation_url(precipitation, format: :json)
end
