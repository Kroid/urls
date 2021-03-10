class ShortUrl < ApplicationRecord

  validates :short, presence: true, uniqueness: true
  validates :long, presence: true

  before_validation :set_short, on: :create

  def set_short
    self.short = SecureRandom.hex(5)
  end
end
