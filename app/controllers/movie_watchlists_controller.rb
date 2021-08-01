class MovieWatchlistsController < ApplicationController
  before_action :set_movie_watchlist, only: [:show, :update, :destroy]

  # GET /movie_watchlists
  def index
    @movie_watchlists = MovieWatchlist.all

    render json: @movie_watchlists
  end

  # GET /movie_watchlists/1
  def show
    render json: @movie_watchlist
  end

  # POST /movie_watchlists
  def create
    @movie_watchlist = MovieWatchlist.new(movie_watchlist_params)

    if @movie_watchlist.save
      render json: @movie_watchlist, status: :created, location: @movie_watchlist
    else
      render json: @movie_watchlist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_watchlists/1
  def update
    if @movie_watchlist.update(movie_watchlist_params)
      render json: @movie_watchlist
    else
      render json: @movie_watchlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movie_watchlists/1
  def destroy
    @movie_watchlist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_watchlist
      @movie_watchlist = MovieWatchlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_watchlist_params
      params.require(:movie_watchlist).permit(:movie_id, :watchlist_id)
    end
end
