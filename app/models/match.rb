class Match < ApplicationRecord
  belongs_to :user
  has_many :teams, dependent: :destroy
  has_many :messages, dependent: :destroy
  validates :date, presence: true
  validates :comment, presence: true, length: { in: 20..100 }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  #def date_now?
   # date >= Time.now
  #end
end
