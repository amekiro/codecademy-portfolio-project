class PagesController < ApplicationController
    def welcome

    end

    def gallery
        @works = Work.all
    end
end
