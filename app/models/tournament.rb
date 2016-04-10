class Tournament < ActiveRecord::Base
    has_many :entrants
    validates :name, presence: true
end
