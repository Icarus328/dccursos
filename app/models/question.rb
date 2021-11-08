class Question < ApplicationRecord
    validates :title, length: { minimum: 1 }, :uniqueness => true
    validates :description, length: { minimum: 1 }
    validates :course, length: { minimum: 1 }
    validates :publication_date, length: { minimum: 1 }
    belongs_to :user
    has_many :answers
end
