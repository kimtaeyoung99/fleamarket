class AttendController < ApplicationController
    def register
        @joins = Join.all
    end
    
    def create
        Join.create(content: params[:content], image: params[:image])
        redirect_to :back
    end
end
