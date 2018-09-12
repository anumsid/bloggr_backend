class Blog < ApplicationRecord
  has_many :comments, through: :users
  belongs_to :user
end
