class Tournament < ActiveRecord::Base
  has_many :entrants
  has_many :brackets
end
