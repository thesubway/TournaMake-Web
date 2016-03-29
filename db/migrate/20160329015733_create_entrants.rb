class CreateEntrants < ActiveRecord::Migration
  def change
    create_table :entrants do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
