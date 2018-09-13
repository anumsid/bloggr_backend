class Blog < ApplicationRecord
  has_many :comments, through: :users
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
end
