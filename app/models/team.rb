class Team < ApplicationRecord
  belongs_to :match
  has_many :participations
  validates :name, presence: true, length: { in: 3..15 }
end
