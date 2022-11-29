class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :votes
  has_many :matches
  has_many :participations
  has_many :messages
  validates :first_name, :last_name, presence: true
  validates :pseudo, presence: true, uniqueness: true, length: { in: 3..15 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
