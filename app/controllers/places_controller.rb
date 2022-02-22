class PlacesController < ApplicationController
    def index
        @places = Place.all
    end  

    def new 
    end 

    def create
        place = Place.create(params["place"])
        redirect_to "/places"
    end 

    def show 
        @place = Place.find(params["id"])
    end
end
