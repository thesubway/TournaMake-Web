json.array!(@groups) do |group|
  json.extract! group, :id, :letter, :tournament_id
  json.url group_url(group, format: :json)
end
