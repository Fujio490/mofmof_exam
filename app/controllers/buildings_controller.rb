class BuildingsController < ApplicationController
    before_action :set_building, only: [:show, :edit, :update, :destroy]
    before_action :set_near_stations, only: [:show, :edit, :update, :destroy]
    def index
        @buildings = Building.all
    end
    def new
        @building = Building.new
        2.times do
            @building.near_stations.build
        end
    end
    def create
        @building = Building.new(building_params)
        if @building.save
            redirect_to buildings_path
        else
            render :new
        end
    end
    def show
    end
    def edit
        2.times do
            @building.near_stations.build
        end
    end
    def update
        if @building.update(building_params)
            redirect_to buildings_path
        else
            render :edit
        end
    end
    def destroy
        @building.destroy
        redirect_to buildings_path
    end
    private
    def building_params
        params.require(:building).permit(
            :name,
            :rent,
            :address,
            :age,
            :note,
            near_stations_attributes: {}
        )
    end
    def set_building
        @building = Building.find(params[:id])
    end
    def set_near_stations
        @near_stations = @building.near_stations
    end
end
