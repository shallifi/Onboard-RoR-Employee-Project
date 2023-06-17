class EmployeesNeedsController < ApplicationController
    def index  
        employee = Employee.find(params[:employee_id])
        needs = employee.needs
        render json: needs, only: [:id, :need_name]
    end

    def create 
        employee = Employee.find(params[:employee_id])
        need = Need.find(params[:need_id]) 
        employee.needs << need 
        render json: employee.needs, only: [:id, :need_name]
    end

    def destroy
        employee = Employee.find(params[:employee_id])
        need = Need.find(params[:need_id])
        employee.needs.delete(need)
        head :no_content
    end


    private

    def employee_need_params
        params.require(:employee_need).permit(:employee_id, need_ids: [])
    end

end
