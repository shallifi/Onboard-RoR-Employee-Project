class TitlesController < ApplicationController

    # if agency_id is present, find titles by agency
    # else, find all titles
    def index
        if params[:agency_id].present?
            agency = Agency.find(params[:agency_id])
            @titles = agency.titles
        else
            @titles = Title.all
        end

        if params[:search].present?
            @titles = @titles.where("title_name LIKE ?", "%#{params[:search]}%")
        end
        
        render json: @titles, only: [:id, :agency_id, :title_name]
    end

    # def index /titles/:id
    def show
        @title = Title.find(params[:id])
        render json: @title, only: [:id, :title_name]
    end
    
    # find titles by agency
    def by_agency
        agency = Agency.find(params[:agency_id])
        @titles = agency.titles
        render json: @titles, only: [:id, :index_departments_on_agency_id, :title_name]
    end

    # by_department
    def by_department
        department = Department.find(params[:department_id])
        @titles = department.titles
        render json: @titles, only: [:id, :agency_id, :title_name]
    end


end
