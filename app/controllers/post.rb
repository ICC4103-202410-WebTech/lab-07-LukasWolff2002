class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags
    belongs_to :post, optional: true
    has_many :sub_posts, class_name: "Post", foreign_key: "post_id"

    validates :title, presence: true
    validates :content, presence: true
    validates :user_id, presence: true
    validates :answers_count, numericality: { greater_than_or_equal_to: 0 }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0 }
    
    # Callbacks
    before_validation :set_default_published_at, if: -> { published_at.nil? }

    private

    def set_default_published_at
        self.published_at = Time.current
    end
end