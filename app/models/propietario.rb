class Propietario < ApplicationRecord
    has_one :license
    has_many :personas, :as => :personable
    has_many :infraccions
    validates_associated :license
    validates :curp, presence: true, length:{is:18}
    validates :fecha_nacimiento, presence: true
end
