class Entrant < ActiveRecord::Base
    belongs_to :tournament
    validates :name, presence: true
end
