class Bracket < ActiveRecord::Base
    validates :isStarted, presence:true
    has_many :matches
end
