class Curso < ApplicationRecord
    validates :name, length: { minimum: 5 }, :uniqueness => true
    validates :description, length: { minimum: 1 }
    validates :duration, length: { minimum: 1 }
    validates :teacher, length: { minimum: 1 }
    validates :price, length: { minimum: 1 }
    validates :category, length: { minimum: 1 }

    has_many :users_cursos
    has_many :users, through: :users_cursos
    has_many :reviews
    has_many :questions
    has_many :answers
    has_many :aulas
    belongs_to :user
    has_many :questions
end
