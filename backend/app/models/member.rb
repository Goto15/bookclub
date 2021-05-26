class Member < ApplicationRecord
  self.primary_key = "uuid"

  has_many :books
  has_many :clubmembers
  has_many :clubs, through: :clubmembers
  has_many :meetings, through: :clubs

  # ----- CALLBACKS ----- #
  before_create :generate_uuid

  def generate_uuid
    self.uuid = SecureRandom.uuid
  end
end
