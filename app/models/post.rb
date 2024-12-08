class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  has_many :related_posts, dependent: :destroy
end
