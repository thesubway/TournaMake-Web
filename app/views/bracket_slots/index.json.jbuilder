json.array!(@bracket_slots) do |bracket_slot|
  json.extract! bracket_slot, :id, :seedLeft, :seedRight, :slotNum, :bracket_id
  json.url bracket_slot_url(bracket_slot, format: :json)
end
