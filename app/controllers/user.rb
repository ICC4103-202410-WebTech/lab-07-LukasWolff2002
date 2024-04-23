class User < ApplicationRecord
    has_many :posts

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :format: { with: URI::MailTo::EMAIL_REGEXP, message: "debe tener un formato de dirección de correo electrónico válido" }
    validates :password, presence: true, length: { minimum: 6 }

    before_validation :arreglos

    def arreglos
        self.email = email.downcase
    end
end