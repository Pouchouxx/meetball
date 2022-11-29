class Message < ApplicationRecord
  belongs_to :user
  belongs_to :match
  validates :content, presence: true, length: { maximum: 150 }
end
