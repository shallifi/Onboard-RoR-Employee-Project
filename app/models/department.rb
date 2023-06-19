class Department < ApplicationRecord
    has_many :employees
    belongs_to :agency 
    has_many :titles, through: :employees

end
