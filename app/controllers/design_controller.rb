class DesignController < ApplicationController
    def index
        @design = Artwork.where(category: "design")
    end

    def show
        # Get designs
        @designs = Artwork.where(category: "design")
        @design = Artwork.find(params[:id])
        
        # Set navigation
        if @design.id == @designs.first.id
            @prev = @designs.last.id
        else
            @prev = @designs.where("id < ? ", @design.id).last.id
        end

        if @design.id == @designs.last.id
            @next = @designs.first.id
        else
            @next = @designs.where("id > ? ", @design.id).first.id
        end

        # Get sketches
        @sketches = Sketch.where(artwork_id: @design.id)
    end
end
