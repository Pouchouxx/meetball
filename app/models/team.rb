class Team < ApplicationRecord
  belongs_to :match
  has_many :participation
end
