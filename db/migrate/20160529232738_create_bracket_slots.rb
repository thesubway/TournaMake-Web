class CreateBracketSlots < ActiveRecord::Migration
  def change
    create_table :bracket_slots do |t|
      t.string :seedLeft
      t.string :seedRight
      t.integer :slotNum
      t.references :bracket, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
