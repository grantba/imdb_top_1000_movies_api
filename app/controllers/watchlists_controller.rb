class WatchlistsController < ApplicationController
  before_action :set_watchlist, only: [:show, :update, :destroy]

  # GET /watchlists
  def index
    watchlists = Watchlist.all

    render json: WatchlistSerializer.new(watchlists)
  end

  # GET /watchlists/1
  def show
    render json: WatchlistSerializer.new(@watchlist)
  end

  # POST /watchlists
  def create
    watchlist = Watchlist.new(watchlist_params)

    if watchlist.save
      render json: WatchlistSerializer.new(watchlist)
    else
      errors = watchlist.errors.map {|message| message.message}.join(", ")
      render json: {errors: "#{errors}"}, status: :unprocessable_entity       
    end
  end

  # PATCH/PUT /watchlists/1
  def update
    if @watchlist.update(watchlist_params)
      render json: WatchlistSerializer.new(watchlist)
    else
      errors = @watchlist.errors.map {|message| message.message}.join(", ")
      render json: {errors: "#{errors}"}, status: :unprocessable_entity       
    end
  end

  # DELETE /watchlists/1
  def destroy
    if @watchlist.destroy
      render json: {status: :ok}
    else
      render json: {errors: "There was an issue deleting your watchlist. Please try again."}           
    end    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watchlist
      @watchlist = Watchlist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def watchlist_params
      params.require(:watchlist).permit(:category_type)
    end
end

