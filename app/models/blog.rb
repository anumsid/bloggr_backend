class Blog < ApplicationRecord
  # has_many :blog_comments, through: :users, :source => :comments
  has_many :comments
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
  validates :date, presence: true
end
