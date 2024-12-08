class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :comment_reactions, dependent: :destroy

  has_many :replies, dependent: :destroy
  has_many :reply_reactions, dependent: :destroy
end
