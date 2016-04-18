class Group < ActiveRecord::Base
    belongs_to :tournament
    validates :letter, presence:true, length: {maximum: 1}
end
