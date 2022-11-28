class Vote < ApplicationRecord
  belongs_to :participation
  belongs_to :user
end
