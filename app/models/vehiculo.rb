class Vehiculo < ApplicationRecord
    validates :numero_tarjeta_circulacion,:numero_serie,:numero_placa,:fecha_caducidad_tarjeta, presence: true
end
