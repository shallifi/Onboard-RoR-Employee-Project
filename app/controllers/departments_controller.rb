class DepartmentsController < ApplicationController
    
    # if agency_id is present, find departments by agency
    # else, find all departments
    def index
        if params[:agency_id].present?
            agency = Agency.find(params[:agency_id])
            @departments = agency.departments
        else
            @departments = Department.all
        end

        if params[:search].present?
            @departments = @departments.where("department_name LIKE ?", "%#{params[:search]}%")
        end
        
        render json: @departments, only: [:id, :agency_id, :department_name]
    end

    # def index
    def show
        @department = Department.find(params[:id])
        render json: @department, only: [:id, :agency_id, :department_name]
    end
    
    # find departments by agency
    def by_agency
        agency = Agency.find(params[:agency_id])
        @departments = agency.departments
        render json: @departments, only: [:id, :agency_id, :department_name]
    end
    
end

