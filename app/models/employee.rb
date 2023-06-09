class Employee < ApplicationRecord

    belongs_to :agency

    validates :agency, presence: true

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

end
