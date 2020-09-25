class Api::V1::AudienceController < ApplicationController
    before_action :set_audience, only: %i[show update destroy]
    before_action :check_login, only: %i[create]
    before_action :check_owner, only: %i[update destroy]


    def index
        render json: Audience.all
    end

    def show
        render json: Audience.find(params[:id])
    end

    def create
        audience = current_user.audiences.build(audience_params)
        if audience.save
            render json: audience, status: :created
        else
            render json: { errors: audience.errors }, status:
            :unprocessable_entity
        end
    end

    def update
        if @audience.update(audience_params)
        render json: @audience
        else
        render json: @audience.errors, status:
        :unprocessable_entity
        end
    end

    def destroy
        @product.destroy
        head 204
    end

    private

    def audience_params
        params.require(:audience).permit(
        :firstname, 
        :lastname, 
        :address, 
        :phone,
        :birthday,
        :tags,
        :email_marketing)
    end

    def check_owner
        head :forbidden unless @audience.user_id == current_user&.id
    end

    def set_audience
        @audience = Audience.find(params[:id])
    end
end
