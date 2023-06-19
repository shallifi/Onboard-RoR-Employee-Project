class Employee < ApplicationRecord


    belongs_to :agency
    belongs_to :department
    belongs_to :office
    has_and_belongs_to_many :needs, join_table: :employees_needs

    validates :agency, presence: true
    validates :department, presence: true
    validates :office, presence: true

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    private

    def set_employee
        @employee = Employee.find(params[:id])
    end

end
