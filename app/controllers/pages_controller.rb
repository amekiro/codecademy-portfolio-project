class PagesController < ApplicationController
    def welcome

    end

    def gallery
        @works = Work.all
    end

    def about

    end

    def contact

    end
end
