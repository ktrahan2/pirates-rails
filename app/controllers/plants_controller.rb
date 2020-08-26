class PlantsController < ApplicationController
    def index
        plants = Plant.all

        render json: { plants: plants }
    end
    
    def show
        plants = Plant.find(params[:id])

        render json: { plants: plants}

    end

    def destroy
        plant = Plant.find(params[:id])

        plant.destroy

        render status :no_content
    end

    def create
        plant = Plant.create(
            name: params[:name],
            age: params[:age]
        )

        render json: { plant: plant}
    end

    def update
        plant = Plant.find(params[:id])

        plant.update(
            name: params[:name],
            age: params[:age]
        )

        render json: { plant: plant }
    end



end
