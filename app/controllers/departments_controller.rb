class DepartmentsController < ApplicationController
    def index
        @departments = Department.all

        if params[:search].present?
            @departments = @departments.where("department_name LIKE ?", "%#{params[:search]}%")
        end

        render json: @departments
    end
end
