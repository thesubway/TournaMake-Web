class Bracket < ActiveRecord::Base
    validates :isStarted, presence:true
end
