class CreateBracketSlots < ActiveRecord::Migration
  def change
    create_table :bracket_slots do |t|
      t.string :seedLeft
      t.string :seedRight
      t.integer :slotNum

      t.timestamps null: false
    end
  end
end
