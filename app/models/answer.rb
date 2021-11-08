class Answer < ApplicationRecord
    validates :content, length: { minimum: 1 }
    validates :associated_question, length: { minimum: 1 } 
    belongs_to :user
    
end
