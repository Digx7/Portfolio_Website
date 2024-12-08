class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  has_many :replies, dependent: :destroy
  has_many :comment_reactions, dependent: :destroy
end
