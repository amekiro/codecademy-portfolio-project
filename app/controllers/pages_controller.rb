class PagesController < ApplicationController
    def welcome
        #@designs = Artwork.where(category: "design")
        #rand = rand(@designs.length).floor()
        #@dwork = @designs[rand]

        #@illustrations = Artwork.where(category: "illustration", media: "image")
        #rand = rand(@illustrations.length).floor()
        #@iwork = @illustrations[rand]

        #@threeds = Artwork.where(category: "3d", media: "image")
        #rand = rand(@threeds.length).floor()
        #@twork = @threeds[rand]

        #@photographs = Artwork.where(category: "photography")
        #rand = rand(@photographs.length).floor()
        #@pwork = @photographs[rand]
    end

    def gallery
        @works = Work.all
    end

    def about

    end
end
