json.array!(@droughts) do |drought|
  json.extract! drought, :id, :climate_id, :drought_severity, :year
  json.url drought_url(drought, format: :json)
end
