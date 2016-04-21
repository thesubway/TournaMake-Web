class Group < ActiveRecord::Base
    belongs_to :tournament
    has_many :matches
    validates :letter, presence:true, length: {maximum: 1}
end
