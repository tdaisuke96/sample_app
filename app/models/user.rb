class User < ApplicationRecord
  #validates :name, :email, presence: true
  # 下記でも同じ意味
  # validates(:name, presence: true)
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_RAGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_RAGEX },
                    uniqueness: { case_sensitive: false }
                    # uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end