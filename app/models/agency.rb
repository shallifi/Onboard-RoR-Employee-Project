class Agency < ApplicationRecord
    has_many :employees
    has_many :departments    
end
