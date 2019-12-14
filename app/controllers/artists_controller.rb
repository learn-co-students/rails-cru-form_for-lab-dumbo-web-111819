class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end

    def new
        #create a form_for
        @artist = Artist.new
        
    end

    def create
        @artist = Artist.create(params.require(:artist).permit(:name, :bio))
        redirect_to '/artists'
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        @artist = Artist.find(params[:id])
        artist_params = params.require(:artist).permit(:name, :bio)
        @artist.update(artist_params)
        redirect_to "/artists/#{@artist.id}"
    end
end
