class AddGroupRefToMatches < ActiveRecord::Migration
  def change
    add_reference :matches, :group, index: true, foreign_key: true
  end
end
