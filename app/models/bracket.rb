class Bracket < ActiveRecord::Base
    validates :isStarted, presence:true
    belongs_to :tournament
    has_many :matches, dependent: :destroy
    has_many :bracket_slots, dependent: :destroy
end
