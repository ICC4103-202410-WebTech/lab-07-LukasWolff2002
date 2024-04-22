class Post < ApplicationRecord
    belongs_to :user
    has_many :tags, through: :post_tags
    belongs_to :post, optional: true
    has_many :sub_posts, class_name: "Post", foreign_key: "post_id"
end