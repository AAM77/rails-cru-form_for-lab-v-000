class GenresController < ApplicationController
    
  def index
  end
  
  def new
  end
  
  def create
    redirect_to genres_path
  end
  
  def edit
  end
  
  def update
    redirect_to genres_path
  end
  
  def show
    @genre = Genre.find_by_id(params[:id])
  end
  
private
  
  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
  
end