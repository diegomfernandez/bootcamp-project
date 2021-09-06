class Articulo < ApplicationRecord
    has_many :infraccions
    validates :descripcion, presence: true, length: {minimum: 5}
end
