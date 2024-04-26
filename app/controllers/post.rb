class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags
    belongs_to :post, optional: true
    has_many :sub_posts, class_name: "Post", foreign_key: "post_id"

    validates :title, presence: { message: "El título no puede estar en blanco. ¡Dale un nombre a tu publicación!" }
    validates :content, presence: { message: "El contenido no puede estar en blanco. ¡Escribe algo interesante!" }
    validates :published_at, presence: { message: "La fecha de publicación es obligatoria. ¡Cuándo compartes tu historia importa!" }
    validates :answers_count, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "El contador de respuestas debe ser un número entero no negativo. ¡Asegúrate de contar bien!" }
    validates :likes_count, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "El contador de likes debe ser un número entero no negativo. ¡No te preocupes, a todos nos gusta recibir likes!" }
        
    # Callbacks
    before_validation :set_default_published_at, if: -> { published_at.nil? }

    private

    def set_default_published_at
        self.published_at = Time.current
    end
end