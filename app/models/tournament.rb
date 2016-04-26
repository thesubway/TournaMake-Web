class Tournament < ActiveRecord::Base
    has_many :groups
    has_many :entrants
    has_many :brackets
    validates :name, presence: true
end
