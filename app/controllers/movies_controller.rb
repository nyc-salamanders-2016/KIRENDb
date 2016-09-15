class MoviesController < ApplicationController
  def previous
    @previous_movies = Movie.where(is_previous: true).order("created_at DESC").limit(5)
    if @previous_movies
      render json: @previous_movies
    else
      render :nothing => true, status: 404
    end
  end

  def popular
    @popular_movies = Movie.where(is_popular: true).order("created_at DESC").limit(5)
    if @popular_movies
      render json: @popular_movies
    else
      render :nothing => true, status: 404
    end
  end

  def create
    movie = Movie.new(movie_params)
    movie.is_popular = random_popularity
    movie.save
    render json: movie
  end

  private

  def movie_params
    params.require(:movie).permit(:api_url, :image_url, :is_previous, :is_popular)
  end

  def random_popularity
    return true if rand(0...1000).even?
    false
  end
end
