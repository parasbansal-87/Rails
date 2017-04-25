class FavouritesController < ApplicationController

  before_action :set_movie, only: [:create, :remove_favourite]

  def index
    user = current_user || User.new
    @favourite_movies = Movie.joins(:favourites).where(favourites: {user_id: user.id}).page(params[:page]).per(5)
  end

  def create
    user = current_user || User.new
    @favourite = Favourite.new(movie_id: @movie.id, user_id: user.id)
    if @favourite.save
      flash[:notice] = 'Movie added to favourites'
    else
      flash[:error] = 'Unable to add movie to favourites ! Please check if already added.'
    end
    redirect_to movie_path(@movie)
  end

  def remove_favourite
    user = current_user || User.new
    Favourite.where(movie_id: @movie.id, user_id: user.id).destroy_all
    flash[:notice] = 'Movie removed from favourites'
    redirect_to favourites_path
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
