class Persona < ApplicationRecord
  belongs_to :personable, polymorphic: true
  validates :nombres, presence: true, length: {minimum:2}
  validates :apellido_paterno, presence: true, length: {minimum:2}
end
