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
    private
    def building_params
        params.require(:building).permit(
            :name,
            :rent,
            :address,
            :age,
            :note,
            near_station_attributes: [:track_name, :station_name, :minutes_walk]
        )
    end
end
