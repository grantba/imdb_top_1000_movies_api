class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :update, :destroy]

  # GET /movies
  def index
    movies = Movie.all

    render json: MovieSerializer.new(movies)
  end

  # GET /movies/1
  def show
    render json: MovieSerializer.new(@movie)
  end

  # POST /movies
  def create
    movie = Movie.new(movie_params)

    if movie.save
      render json: MovieSerializer.new(movie)
    else
      errors = movie.errors.map {|message| message.message}.join(", ")
      render json: {errors: "#{errors}"}, status: :unprocessable_entity    
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      render json: MovieSerializer.new(@movie)
    else
      errors = @movie.errors.map {|message| message.message}.join(", ")
      render json: {errors: "#{errors}"}, status: :unprocessable_entity    
    end
  end

  # DELETE /movies/1
  def destroy
    if @movie.destroy
      render json: {status: :ok}
    else
      render json: {errors: "There was an issue deleting this movie. Please try again."}      
    end    
  end

  def search_by_name
    @movie = Api.get_movie_by_name(params[:search])
    if @movie == "That movie could not be found. Please try again." || @movie == "There was an issue loading this movie. Please try again."
      render json: {errors: "There was either an issue loading this movie\n\nor that movie could not be found.\n\nPlease try again."}           
    else
      render json: MovieSerializer.new(@movie)
    end
  end

  def search_by_id
    @movie = Api.get_movie_by_id(params[:imdbID])
    if @movie == "That movie could not be found. Please try again." || @movie == "There was an issue loading this movie. Please try again."
      render json: {errors: "There was either an issue loading this movie\n\nor that movie could not be found.\n\nPlease try again."}           
    else
      render json: MovieSerializer.new(@movie)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_params
      params.require(:movie).permit(:Title, :Year, :Rated, :Released, :Runtime, :Genre, :Director, :Writer, :Actors, :Plot, :Awards, :Poster, :Ratings, :imdbRating, :imdbID, :BoxOffice, :Production, :Response, :search)
    end
end