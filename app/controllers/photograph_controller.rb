class PhotographController < ApplicationController
    def show
        #Get photographs
        @photos = Artwork.where(category: "photography")
        @photo = Artwork.find(params[:id])

        #Set navigation
        if @photo.id == @photos.first.id
            @prev = @photos.last.id
        else
            @prev = @photos.where("id < ? ", @photo.id).last.id
        end

        if @photo.id == @photos.last.id
            @next = @photos.first.id
        else
            @next = @photos.where("id > ? ", @photo.id).first.id
        end

        # Get sketches
        @sketches = Sketch.where(artwork_id: @photo.id)
    end
end
