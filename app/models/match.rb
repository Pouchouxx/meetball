class Match < ApplicationRecord
  belongs_to :user
  has_many :teams
  has_many :messages
  validates :date, presence: true, if: :date_now?
  validates :comment, presence: true, length: { in: 20..100 }

  def date_now?
    date >= Datetime.now
  end
end
