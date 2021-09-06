class Oficial < ApplicationRecord
    has_many :personas, :as => :personable  
    has_many :infraccions
    validates :numero_agente, presence: true
end
