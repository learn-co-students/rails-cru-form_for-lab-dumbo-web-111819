class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new #render the new form
    @song = Song.new
  end

  def create #post http req
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song) #show page
  end

  def edit
      @song = Song.find(params[:id])
  end

  def update
      @song = Song.find(params[:id])
      @song.update(song_params(:name, :artist_id, :genre_id))
      redirect_to song_path(@song)
  end
end


private

def song_params(*args)
  params.require(:song).permit(*args)
end



# "name"
# t.integer  "artist_id"
# t.integer  "genre_id"
