class Group < ActiveRecord::Base
    validates :letter, presence:true, length: {maximum: 1}
end
