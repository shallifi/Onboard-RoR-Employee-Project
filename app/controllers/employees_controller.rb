class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show]

    def index
        @employees = Employee.all
        render json: @employees
    end

    def show
        render json: @employee
    end

    def create
        # puts employee_params.inspect
        @employee = Employee.new(employee_params)
        
        if @employee.save
            needs = Need.where(id: params[:need_ids]) #.pluck(:id)
            # puts needs.inspect
            @employee.needs << needs
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
        params.require(:employee).permit(:first_name, :last_name, :new_to_scc, :driving_for_position, :transporting_children, :attending_preservice, :start_date , :agency_id, :department_id, :office_id, :extension, :additional_info, need_ids: [])
    end


end
