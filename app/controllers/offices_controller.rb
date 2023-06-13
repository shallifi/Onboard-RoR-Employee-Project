class OfficesController < ApplicationController
    def index
        @offices = Office.all
        
        # add search functionality to index action /////////////////////////////////
        if params[:search].present?
            @offices = @offices.where("office_name LIKE ?", "%#{params[:search]}%")
        end
        
        
        
        render json: @offices, only: [:id, :office_name, :address, :office_phone]
    end
    

end
