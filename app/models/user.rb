class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email, :case_sensitive => false
  has_many :user_challenges
  has_many :challenges, through: :user_challenges
end
