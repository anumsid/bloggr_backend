class User < ApplicationRecord
  has_many :blogs
  has_many :comments

  has_secure_password

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true, allow_nil: false
  validates :password, length: {minimum: 6, maximum: 18}, on: :create
  validates :password, presence: true

end
