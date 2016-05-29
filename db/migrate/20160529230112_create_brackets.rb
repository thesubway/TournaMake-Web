class CreateBrackets < ActiveRecord::Migration
  def change
    create_table :brackets do |t|
      t.boolean :isStarted
      t.boolean :reseed
      t.boolean :isFinished
      t.references :tournament, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
