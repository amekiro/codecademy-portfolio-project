class IllustrationController < ApplicationController
    def show
        @illustrations = Artwork.where(category: "illustration")
        @illustration = Artwork.find(params[:id])
    end
end
