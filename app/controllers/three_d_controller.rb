class ThreeDController < ApplicationController
    def show
        @threes = Artwork.where(category: "3d")
        @three = Artwork.find(params[:id])
    end
end
