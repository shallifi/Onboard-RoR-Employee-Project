class Title < ApplicationRecord

    has_many :employees

    # validates :title_name  , presence: true , uniqueness: true // this is the validation for the title name 

end
