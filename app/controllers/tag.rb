class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, through: :post_tags

    validates :name, presence: { message: "El nombre de la etiqueta no puede estar en blanco. ¡Dale un nombre a tu etiqueta!" }, uniqueness: { message: "Ya existe una etiqueta con este nombre. Por favor, elige otro nombre para tu etiqueta." }
end