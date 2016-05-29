json.array!(@entrants) do |entrant|
  json.extract! entrant, :id, :name, :tournament_id
  json.url entrant_url(entrant, format: :json)
end
