class Question < ApplicationRecord
    validates :title, length: { minimum: 1 }
    validates :description, length: { minimum: 1 }
    belongs_to :user
    has_many :answers
    belongs_to :aula
end
