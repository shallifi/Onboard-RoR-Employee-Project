class DepartmentsController < ApplicationController
    # def index
    #     @departments = Department.all

    #     # add search functionality to index action /////////////////////////////////
    #     if params[:search].present?
    #         @departments = @departments.where("department_name LIKE ?", "%#{params[:search]}%")
    #     end

    #     render json: @departments
    # end

    # def index
    #     agency = Agency.find(params[:agency_id])
    #     @departments = agency.departments

    #     render json: @departments, only: [:id, :department_name]
    # end


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

    def show
        @department = Department.find(params[:id])
        render json: @department, only: [:id, :agency_id, :department_name]
    end


end
