class Blog < ApplicationRecord
  has_many :comments
  has_many :blog_comments, through: :comments, :source => :user
  belongs_to :user


  validates :title, presence: true
  validates :content, presence: true
  validates :date, presence: true
end
