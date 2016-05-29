json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :name, :format
  json.url tournament_url(tournament, format: :json)
end
