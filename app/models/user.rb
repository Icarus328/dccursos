class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable

    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    has_many :users_cursos


    has_many :cursos
    has_many :reviews
    has_many :questions
    has_many :answers
end
