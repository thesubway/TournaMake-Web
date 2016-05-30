json.array!(@matches) do |match|
  json.extract! match, :id, :leftId, :rightId, :leftScore, :rightScore, :isFinished, :bracket_id, :group_id
  json.url match_url(match, format: :json)
end
