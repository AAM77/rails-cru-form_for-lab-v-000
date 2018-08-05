class SongsController < ApplicationController
    
  def index
    @songs = Song.all
  end
  
  def new
    @song = Song.new
  end
  
  def create
    artist = Artist.find_by_id(params[:song][:artist_id])
    genre = 
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to songs_path
  end
  
  def edit
    @song = Song.find_by_id(params[:id])
  end
  
  def update
    @song = Song.find_by_id(params[:id])
    @song.update(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end
  
  def show
    @song = Song.find_by_id(params[:id])
    @artist = @song.artist
    @genre = @song.genre
  end
  
private
  
  def song_params(*args)
    params.require(:song).permit(*args)
  end
  
end