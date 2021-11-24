class SpiceController < ApplicationController

    def index 
        spices = Spice.all 
        render json: spices 
    end

    # def show
    #     spice = Spice.find(params[:id])
    #     render json: spice
    # end

    def create 
        newSpice = Spice.create(
            title: params[:title],
            image: params[:image],
            description: params[:description],
            notes: params[:notes],
            rating: params[:rating]
        )
        render json: newSpice, status: :created
    end

    def update 
        updatedSpice = Spice.find(params[:id])
        updatedSpice.update(updatedSpice_params)
        render json: updatedSpice
    end

    def destroy 
        Spice.destroy(params[:id])
    end

    private 
    def updatedSpice_params
        params.permit(
            :title,
            :image,
            :description,
            :notes,
            :rating
        )
    end

end
