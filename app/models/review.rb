class Review < ApplicationRecord
    validates :punctuation, numericality: true
    
end
