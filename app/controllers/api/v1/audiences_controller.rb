class Api::V1::AudiencesController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :authenticate_user!, only: %i[index create]
    before_action :validate_api_key!
    def index
        render json: Audience.all
    end
    
    # def show
    #     render json: Audience.find(params[:id])
    # end

    def create
        audience = Audience.new(audience_params)
        if audience.save
            render json: audience, status: :created
        else
            render json: { errors: audience.errors }, status: :unprocessable_entity
        end
    end

    private 

    def audience_params
        params.require(:audience).permit(:firstname, :lastname, :address, :phone, :birthday, :tags, :email_marketing)
    end

    def has_valid_api_key?
       request.headers['X-Api-Key'] = "abc123"
    end

    def validate_api_key!
        return head :forbidden unless has_valid_api_key?
    end
end