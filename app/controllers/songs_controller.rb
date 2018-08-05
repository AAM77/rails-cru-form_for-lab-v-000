class SongsController < ApplicationController
    
  def index
    @songs = Song.all
  end
  
  def new
  end
  
  def create
    redirect_to songs_path
  end
  
  def edit
  end
  
  def update
    redirect_to songs_path
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