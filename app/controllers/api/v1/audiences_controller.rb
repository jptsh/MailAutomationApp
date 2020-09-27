class Api::V1::AudiencesController < ApplicationController
    
    def index
        render json: Audience.all
    end
    
    def show
        render json: Audience.find(params[:id])
    end

end
