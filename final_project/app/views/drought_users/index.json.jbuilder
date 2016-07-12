json.array!(@drought_users) do |drought_user|
  json.extract! drought_user, :id, :user_id, :droughts_id
  json.url drought_user_url(drought_user, format: :json)
end
