class Team < ApplicationRecord
  belongs_to :match
  has_many :participations, dependent: :destroy
  validates :name, presence: true, length: { in: 3..15 }

  def count_validate?
    participations.length < 3
  end
end
