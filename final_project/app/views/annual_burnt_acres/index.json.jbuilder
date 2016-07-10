json.array!(@annual_burnt_acres) do |annual_burnt_acre|
  json.extract! annual_burnt_acre, :id, :acres_per_sq_miles, :year, :state_id
  json.url annual_burnt_acre_url(annual_burnt_acre, format: :json)
end
