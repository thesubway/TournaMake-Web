class Entrant < ActiveRecord::Base
    validates :name, presence: true
end
