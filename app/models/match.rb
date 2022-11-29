class Match < ApplicationRecord
  belongs_to :user
  has_many :teams, dependent: :destroy
  has_many :messages, dependent: :destroy
  validates :date, presence: true, if: :date_now?
  validates :comment, presence: true, length: { in: 20..100 }

  def date_now?
    date >= Time.now
  end
end
