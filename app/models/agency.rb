class Agency < ApplicationRecord
    has_many :employees
    has_many :departments    
    has_many :titles, through: :employees
end
