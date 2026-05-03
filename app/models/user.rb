class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: { case_sensitive: false }
  validates :username, :email, :password, length: { minimum: 7 }
  validates :username, :email, :password, length: { maximum: 25 }
end
