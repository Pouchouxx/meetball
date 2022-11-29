class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :votes, dependent: :destroy
end
