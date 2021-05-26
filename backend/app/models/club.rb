class Club < ApplicationRecord
  self.primary_key = "uuid"

  has_many :clubmembers
  has_many :members, through: :clubmembers
  has_many :meetings
  has_many :books, through: :members

  # ----- CALLBACKS ----- #
  before_create :generate_uuid

  def generate_uuid
    self.uuid = SecureRandom.uuid
  end
end
