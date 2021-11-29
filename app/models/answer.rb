class Answer < ApplicationRecord
    validates :content, length: { minimum: 1 }
    belongs_to :user
    belongs_to :question
    
end
