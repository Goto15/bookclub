class Club < ApplicationRecord
  has_many :clubmembers
  self.primary_key = "uuid"
end
