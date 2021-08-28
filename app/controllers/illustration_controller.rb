class IllustrationController < ApplicationController
    def show
        @illustrations = Artwork.where(category: "illustration")
        @illustration = Artwork.find(params[:id])

        if @illustration.id == @illustrations.first.id
            @prev = @illustrations.first.id
        else
            @prev = @illustrations.where("id < ? ", @illustration.id).last.id
        end

        if @illustration.id == @illustrations.last.id
            @next = @illustrations.first.id
        else
            @next = @illustrations.where("id > ? ", @illustration.id).first.id
        end
    end
end
