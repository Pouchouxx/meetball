class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_one :match, through: :team
  has_many :votes, dependent: :destroy
  validates :user, presence: true, uniqueness: { scope: :team }
end
