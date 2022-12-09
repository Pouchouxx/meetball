class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :votes
  has_many :matches # les matches aue l'utilisateur a cree
  has_many :participations, dependent: :destroy
  has_many :matches_as_participant, through: :participations, source: :match # les matches auquel l'utilisateur participe
  has_many :messages
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
end
