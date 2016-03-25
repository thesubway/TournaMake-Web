class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :leftId
      t.string :rightId
      t.float :leftScore
      t.float :rightScore
      t.boolean :isFinished

      t.timestamps null: false
    end
  end
end
