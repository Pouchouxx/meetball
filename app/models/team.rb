class Team < ApplicationRecord
  belongs_to :match
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations

  validates :name, presence: true, length: { in: 3..25 }

  def count_validate?
    participations.length < 3
  end

  def can_accept?(user)
    users.count < 3 && !users.include?(user)
  end
end
