class Member < ApplicationRecord
  has_many :books
  has_many :clubmembers
  has_many :clubs, :through => :clubmembers
  has_many :meetings, :through => :clubs
end
