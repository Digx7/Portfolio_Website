class RelatedPost < ApplicationRecord
  belongs_to :owner, class_name: "Post"
  belongs_to :related, class_name: "Post"
end
