class MoviesController < ApplicationController
 load_and_authorize_resource
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
    @categories = Category.all
  end

  def update
    @movie = Movie.find(params[:id])
    @categories = Category.all
    params[:movie][:actor_ids] ||= [] if params[:movie]
    if @movie.update_attributes(params[:movie])
      redirect_to @movie, notice: "Successfully updated the movie details!"
    else
      render action: 'edit', alert: "Failed to update the movie details:("
    end
  end

  def create
    @movie = Recipe.new(params[:movie])
    @categories = Category.all
    params[:movie][:actor_ids] ||= [] if params[:movie]
    if @movie.save
      redirect_to @movie, notice: "Successfully added the new movie to our database!"
    else
      render action: 'new', alert: "Failed to create the movie :("
    end
  end

  def new
    @movie = Movie.new
    @categories = Category.all
  end

  def destroy
    @movie = Movie.find(params[:id])
    if @movie.destroy
      redirect_to movies_path, notice: "Successfully deleted the movie!"
    else
      redirect_to @movie, alert: "Failed to delete the movie:("
  end
end
end

