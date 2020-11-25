class MoviesController < ApplicationController
    def index
        # right now we are setting our index to display every single movie available in our database
        # in a few minutes we are gonna change this, so that it doesnt return all movies but SEARCHES
        # the DB for the ones we one.
        @movies = Movie.all
    end
end
