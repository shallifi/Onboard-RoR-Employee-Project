class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
        render json: @employees
    end

    def show
        render json: @employee
    end

    def create
        @employee = Employee.create(employee_params)
        
        if @employee.save
            render json: @employee, status: :created
        else
            render json: @employee.errors, status: :unprocessable_entity
        end
    end

    private

    def set_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :new_to_scc, :driving_for_position, :transporting_children, :attending_preservice, :start_date , :agency_id, :department_id, :office_id, :extension, :additional_info, :needs )
    end


end
