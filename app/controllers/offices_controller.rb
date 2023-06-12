class OfficesController < ApplicationController
    def index
        @offices = Office.all
        
        # add search functionality to index action /////////////////////////////////
        if params[:search].present?
            @offices = @offices.where("office_name LIKE ?", "%#{params[:search]}%")
        end
        
        
        
        render json: @offices
    end
    

end
