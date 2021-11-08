class Review < ApplicationRecord
    validates :punctuation, length: { minimum: 1 }
    validates :description, length: { minimum: 1 }
    validates :cursoasociado, length: { minimum: 1 } 
    belongs_to :user
end
