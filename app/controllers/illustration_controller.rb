class IllustrationController < ApplicationController
    def show
        # Get illustrations
        @illustrations = Artwork.where(category: "illustration")
        @illustration = Artwork.find(params[:id])

        # Set navigation
        if @illustration.id == @illustrations.first.id
            @prev = @illustrations.last.id
        else
            @prev = @illustrations.where("id < ? ", @illustration.id).last.id
        end

        if @illustration.id == @illustrations.last.id
            @next = @illustrations.first.id
        else
            @next = @illustrations.where("id > ? ", @illustration.id).first.id
        end

        # Get sketches
        @sketches = Sketch.where(artwork_id: @illustration.id)
    end
end
