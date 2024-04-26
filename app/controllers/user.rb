class User < ApplicationRecord
    has_many :posts
  
    validates :name, presence: { message: "El nombre no puede estar en blanco. ¡Por favor, cuéntame tu nombre!" }
    validates :email, presence: { message: "El correo electrónico es obligatorio. ¡Necesito saber cómo contactarte!" }, uniqueness: { message: "Ya existe un usuario registrado con este correo electrónico. ¡Intenta con otro!" }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "¡Ups! Parece que este correo electrónico no tiene un formato válido. ¡Por favor, revisa!" }
    validates :password, presence: { message: "La contraseña es obligatoria. ¡No te olvides de proteger tu cuenta!" }, length: { minimum: 6, message: "La contraseña debe tener al menos %{count} caracteres. ¡Más larga es más segura!" }
    
    before_validation :arreglos
  
    def arreglos
      self.email = email.downcase
      self.name = name.downcase
      self.name = name.split.map(&:capitalize).join(' ')
    end
  end
  