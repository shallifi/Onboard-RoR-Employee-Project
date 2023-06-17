class NeedsController < ApplicationController

    def index 
        

        if params[:employee_id].present?
            employee = Employee.find(params[:employee_id])
            @needs = employee.needs
        else
            @needs = Need.all
        end

        if params[:search].present?
            @needs = @needs.where("need_name LIKE ?", "%#{params[:search]}%")
        end

        render json: @needs, only: [:id, :need_name]
    end






end
