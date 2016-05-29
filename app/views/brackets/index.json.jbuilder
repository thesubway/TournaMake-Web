json.array!(@brackets) do |bracket|
  json.extract! bracket, :id, :isStarted, :reseed, :isFinished, :tournament_id
  json.url bracket_url(bracket, format: :json)
end
