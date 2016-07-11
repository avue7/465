json.array!(@state_drought_pres) do |state_drought_pre|
  json.extract! state_drought_pre, :id, :climate_id_id, :state_abbreviation_id
  json.url state_drought_pre_url(state_drought_pre, format: :json)
end
