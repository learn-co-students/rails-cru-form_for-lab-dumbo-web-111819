class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def new
        #create a form_for
        @song = Song.new
        
    end

    def create
        song_params = params.require(:song).permit(:name, :artist_id, :genre_id)
        artist_id = Artist.find_or_create_by(name: song_params[:artist_id]).id
        genre_id = Genre.find_or_create_by(name: song_params[:genre_id]).id
        Song.create(name: song_params[:name], artist_id: artist_id, genre_id: genre_id)

        redirect_to '/songs'
    end

    def show
        @song = Song.find(params[:id])
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        song_params = params.require(:song).permit(:name, :artist_id, :genre_id)
        artist_id = Artist.find_or_create_by(name: song_params[:artist_id]).id
        genre_id = Genre.find_or_create_by(name: song_params[:genre_id]).id
        @song.update(name: song_params[:name], artist_id: artist_id, genre_id: genre_id)

        redirect_to '/songs'
    end

end
