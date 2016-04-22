class AddBracketRefToMatches < ActiveRecord::Migration
  def change
    add_reference :matches, :bracket, index: true, foreign_key: true
  end
end
