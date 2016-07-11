json.array!(@precipitations) do |precipitation|
  json.extract! precipitation, :id, :climate_id, :inches_per_year, :year
  json.url precipitation_url(precipitation, format: :json)
end
