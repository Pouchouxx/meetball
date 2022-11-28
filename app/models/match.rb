class Match < ApplicationRecord
  belongs_to :user
  has_many :teams
  has_many :messages
end
