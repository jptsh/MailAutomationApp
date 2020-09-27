class AudiencesController < ApplicationController
    layout "pages"
    
    def index
        @contacts = Audience.where(user_id: current_user.id)
    end
end
