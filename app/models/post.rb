class Post < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :posts

  validates :title, presence: true
  validates :body, presence: true
end
