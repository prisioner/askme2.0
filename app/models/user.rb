class User < ApplicationRecord
  has_secure_password

  before_save :downcase_nickname

  validates :email, presence: true, uniqueness: true

  validates :header_color, format: { with: /\A#[a-f0-9]{6}\z/i }

  def downcase_nickname
    nickname.downcase!
  end
end
