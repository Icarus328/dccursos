class Aula < ApplicationRecord
    validates :name, length: { minimum: 1 }
    validates :duration, length: { minimum: 1 } 
    validates :duration, numericality: { only_integer: true }
    validates :theme, length: { minimum: 1 }
    validates :date, length: { minimum: 1 }
    validates :number, length: { minimum: 1 }
    validates :associated_video, length: { minimum: 1 }
    validates :associatedcurso, length: { minimum: 1 }
    belongs_to :user
end
