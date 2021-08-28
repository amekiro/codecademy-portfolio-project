class PhotographController < ApplicationController
    def show
        @photos = Artwork.where(category: "photography")
        @photo = Artwork.find(params[:id])
    end
end
