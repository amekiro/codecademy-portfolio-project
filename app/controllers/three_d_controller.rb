class ThreeDController < ApplicationController
    def show
        # Get 3D works
        @threes = Artwork.where(category: "3d")
        @three = Artwork.find(params[:id])

        # Set navigation
        if @three.id == @threes.first.id
            @prev = @threes.last.id
        else
            @prev = @threes.where("id < ? ", @three.id).last.id
        end

        if @three.id == @threes.last.id
            @next = @threes.first.id
        else
            @next = @threes.where("id > ? ", @three.id).first.id
        end

        # Get sketches
        @sketches = Sketch.where(artwork_id: @three.id)
    end
end
