class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    @new_movie = Movie.new(movie_params)
    @movie.save
    redirect_to movie_path(@movie)
  end

  def home
    
  end
end
