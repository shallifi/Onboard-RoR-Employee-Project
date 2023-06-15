class NeedsController < ApplicationController

    def index 
        @needs = Need.all

        if params[:search].present?
            @needs = @needs.where("need_name LIKE ?", "%#{params[:search]}%")
        end

        render json: @needs, only: [:id, :need_name]
    end






end
