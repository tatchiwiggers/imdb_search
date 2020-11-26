class MoviesController < ApplicationController
    def index
      if params[:query].present?
        # Remember we will add some elements to tell how pg search will work in our MODEL 
        # and in the CONTROLLER we will just call the method that is in the MODEL -> :search_by_title_and_syllabus
        @movies = Movie.search_by_title_and_syllabus(params[:query])
      else
        @movies = Movie.all
      end
    end
  end
