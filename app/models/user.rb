class User < ApplicationRecord
  has_one :user_config, dependent: :destroy

  accepts_nested_attributes_for :user_config, allow_destroy: true

  has_secure_password

  before_save :downcase_nickname

  validates :email, presence: true, uniqueness: true

  def downcase_nickname
    nickname.downcase!
  end
end
