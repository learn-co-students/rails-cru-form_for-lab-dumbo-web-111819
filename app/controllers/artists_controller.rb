class ArtistsController < ApplicationController

  def index #only @arists can be used in index page
    @artists = Artist.all
  end

  def show
  
    @artist = Artist.find(params[:id])
  end

  def new
    @artist= Artist.new
  end

  def create
    @artist = Artist.create(params_artist(:name, :bio))
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(params_artist(:name, :bio))
    redirect_to artist_path(@artist)
  end
end

private

def params_artist(*args)
  params.require(:artist).permit(*args)
end
