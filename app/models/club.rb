class Club < ApplicationRecord
  has_many :clubmembers
  has_many :members, :through => :clubmembers
  has_many :meetings
  has_many :books, :through => :members
  self.primary_key = "uuid"
end
