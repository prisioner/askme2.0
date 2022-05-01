class UserConfig < ApplicationRecord
  belongs_to :user

  validates :header_color, format: { with: /\A#[a-f0-9]{6}\z/i }
end
