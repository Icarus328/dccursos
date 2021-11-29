class Review < ApplicationRecord
    validates :punctuation, length: { minimum: 1 }
    validates :description, length: { minimum: 1 }
    belongs_to :user
    belongs_to :curso
end
