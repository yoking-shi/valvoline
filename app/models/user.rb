class User < ApplicationRecord
  acts_as_paranoid
  has_secure_password

  validates :account, :email, :qq, :mobile, uniqueness: true, presence: true
end
