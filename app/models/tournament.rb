class Tournament < ActiveRecord::Base
  has_many :entrants, dependent: :destroy
  has_many :brackets, dependent: :destroy
  has_many :groups, dependent: :destroy
end
