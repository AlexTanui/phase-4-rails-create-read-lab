class PlantsController < ApplicationController

    def index
        render json: Plant.all
    end

    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    def create
        render json: Plant.create(plant_params), status: :created
    end

    private

    def plants_params
        params.permit(:name, :image, :price)
    end
end
