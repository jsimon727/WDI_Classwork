class MoviesController < ApplicationController

  def index
  end

  def create
    @movie = Movie.new(movie_params)

    @movie.poster = poster(@movie.title)

    if @movie.save
      render json: @movie
    else
      render status: 400, nothing: true
    end

  end

  def show
    @movie = Movie.find(params[:id])
  end

  def destroy
    @movie = Movie.find(params[:id])
    
    if @movie.destroy
      render json: {}
    else
      render status: 400, nothing: true
    end
  end

  def poster(title)
    reponse = HTTParty.get("http://www.omdbapi.com/?t=#{title}")
    @posters = JSON(reponse)
    @posters["Poster"]
  end

  def movie_params
    params.require(:movie).permit(:title, :poster, :seen)
  end

end