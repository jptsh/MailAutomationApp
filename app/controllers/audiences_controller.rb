class AudiencesController < ApplicationController
    def index
        @contacts = Audience.all
    end
end
