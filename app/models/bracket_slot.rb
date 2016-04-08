class BracketSlot < ActiveRecord::Base
    validates :slotNum, presence: true
end
