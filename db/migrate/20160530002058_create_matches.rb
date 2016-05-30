class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :leftId
      t.string :rightId
      t.decimal :leftScore
      t.decimal :rightScore
      t.boolean :isFinished
      t.references :bracket, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
