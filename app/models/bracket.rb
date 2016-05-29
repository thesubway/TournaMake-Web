class Bracket < ActiveRecord::Base
    validates :isStarted, presence:true
    belongs_to :tournament
    # has_many :matches
    # has_many :bracket_slots
end
