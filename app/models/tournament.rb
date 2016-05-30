class Tournament < ActiveRecord::Base
  has_many :entrants
  has_many :brackets
  has_many :groups
end
