class Field < ApplicationRecord
  has_one_attached :photo
  belongs_to :matches
end
