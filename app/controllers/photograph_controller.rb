class PhotographController < ApplicationController
    def show
        @photos = Artwork.where(category: "photography")
        @photo = Artwork.find(params[:id])

        if @photo.id == @photos.first.id
            @prev = @photos.first.id
        else
            @prev = @photos.where("id < ? ", @photo.id).last.id
        end

        if @photo.id == @photos.last.id
            @next = @photos.first.id
        else
            @next = @photos.where("id > ? ", @photo.id).first.id
        end
    end
end
