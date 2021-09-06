class License < ApplicationRecord
  belongs_to :propietario
  validates :numero, presence:true 
  validates :tipo, inclusion: {
      in: %w(A B C D E),
      message: "%{value} no es un valor válido"
  }
  validates :fecha_caducidad, presence: true
end
