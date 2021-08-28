class DesignController < ApplicationController
    def index
        @design = Artwork.where(category: "design")
    end

    def show
        @designs = Artwork.all#where(category: "design")
        @design = Artwork.find(params[:id])
    end
end
