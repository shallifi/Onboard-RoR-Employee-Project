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
        puts employee_params.inspect
        @employee = Employee.new(employee_params)
     
        
        if @employee.save
            update_title_and_needs
            render json: @employee, status: :created

        else
            render json: {errors: @employee.errors.full_messages}, status: :unprocessable_entity
            puts @employee.errors.full_messages
        end
    end

    def update
        @employee = Employee.find(params[:id])
        if @employee.update(employee_params)
            update_title_and_needs
            render json: @employee, status: :ok
 
        else
            render json: {errors: @employee.errors.full_messages}, status: :unprocessable_entity
            puts @employee.errors.full_messages
        end
    end

    private

    def set_employee
        @employee = Employee.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :new_to_scc, :supervisor, :employee_id, :driving_for_position, :transporting_children, :attending_preservice, :start_date , :badge_photo, :agency_id, :department_id, :office_id, :extension, :additional_info,:title_id, need_ids: [])
    end

    def update_title_and_needs
        if params[:title_id].present? && Title.exists?(params[:title_id])
          @employee.update(title_id: params[:title_id])
        else
          puts "Title ID is blank or invalid: #{params[:title_id]}"
        end
    
        needs = Need.where(id: params[:need_ids])
        @employee.needs << needs
      end

end
