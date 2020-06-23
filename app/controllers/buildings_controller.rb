class BuildingsController < ApplicationController
    def index
        @buildings = Building.all
    end
    def new
        @building = Building.new
    end
    def create
        @building = Building.new( #params )
        if @property.save
            redirect_to propaties_path
        end
    end
    def show
        
    end
    def edit
        
    end
    def update
        
    end
    def destroy
        
    end
end
