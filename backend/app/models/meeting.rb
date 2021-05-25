class Meeting < ApplicationRecord
  self.primary_key = "uuid"

  belongs_to :club

  # ----- CALLBACKS ----- #
  before_create :generate_uuid

  def generate_uuid
    self.uuid = SecureRandom.uuid
  end
end
