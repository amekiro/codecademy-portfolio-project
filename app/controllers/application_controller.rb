class ApplicationController < ActionController::Base
    helper_method :dwork, :iwork, :twork, :pwork

    def dwork
        @designs = Artwork.where(category: "design")
        rand = rand(@designs.length).floor()
        @dwork = @designs[rand]
    end

    def iwork
        @illustrations = Artwork.where(category: "illustration", media: "image")
        rand = rand(@illustrations.length).floor()
        @iwork = @illustrations[rand]
    end

    def twork
        @threeds = Artwork.where(category: "3d", media: "image")
        rand = rand(@threeds.length).floor()
        @twork = @threeds[rand]
    end

    def pwork
        @photographs = Artwork.where(category: "photography")
        rand = rand(@photographs.length).floor()
        @pwork = @photographs[rand]
    end

end
