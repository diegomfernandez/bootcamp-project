class Infraccion < ApplicationRecord
  belongs_to :articulo
  belongs_to :propietario
  belongs_to :oficial
  validates :fecha,:importe,:calle, presence: true
  validates :importe,:fecha,length: {minimum: 2}
end
