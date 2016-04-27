class AddBracketRefToBracketSlots < ActiveRecord::Migration
  def change
    add_reference :bracket_slots, :bracket, index: true, foreign_key: true
  end
end
