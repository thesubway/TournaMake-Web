class CreateEntrants < ActiveRecord::Migration
  def change
    create_table :entrants do |t|
      t.string :name
      t.references :tournament, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
