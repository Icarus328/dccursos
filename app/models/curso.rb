class Curso < ApplicationRecord
    validates :name, length: { minimum: 5 }
end
