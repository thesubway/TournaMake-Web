class BracketSlot < ActiveRecord::Base
    validates :slotNum, presence: true
    belongs_to :bracket
end
