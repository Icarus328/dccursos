class Curso < ApplicationRecord
    validates :name, length: { minimum: 5 }, :uniqueness => true
    validates :description, length: { minimum: 1 }
    validates :duration, length: { minimum: 1 }
    validates :teacher, length: { minimum: 1 }
    validates :price, length: { minimum: 1 }
    validates :category, length: { minimum: 1 }
    belongs_to :user
end
