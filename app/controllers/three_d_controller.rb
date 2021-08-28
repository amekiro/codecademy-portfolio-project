class ThreeDController < ApplicationController
    def show
        @threes = Artwork.where(category: "3d")
        @three = Artwork.find(params[:id])

        if @three.id == @threes.first.id
            @prev = @threes.first.id
        else
            @prev = @threes.where("id < ? ", @three.id).last.id
        end

        if @three.id == @threes.last.id
            @next = @threes.first.id
        else
            @next = @threes.where("id > ? ", @three.id).first.id
        end
    end
end
