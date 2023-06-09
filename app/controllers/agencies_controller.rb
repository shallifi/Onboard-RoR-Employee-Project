class AgenciesController < ApplicationController
  def index
    @agencies = Agency.all
    
# add search functionality to index action /////////////////////////////////
    if params[:search].present?
      @agencies = @agencies.where("agency_name LIKE ?", "%#{params[:search]}%")
    end
    
    render json: @agencies
  end

  

end
