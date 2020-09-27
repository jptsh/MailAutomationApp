class Api::V1::AudiencesController < ApplicationController
    skip_before_action :authenticate_user!, only: :index

    def index
        render json: Audience.all
    end
    
    def show
        render json: Audience.find(params[:id])
    end

    

end
