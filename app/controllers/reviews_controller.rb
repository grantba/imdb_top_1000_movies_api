class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update, :destroy]

  # GET /reviews
  def index
    reviews = Review.all

    render json: ReviewSerializer.new(reviews)
  end

  # GET /reviews/1
  def show
    render json: ReviewSerializer.new(@review)
  end

  # POST /reviews
  def create
    review = Review.new(review_params)

    if review.save
      render json: ReviewSerializer.new(review)
    else
      errors = review.errors.map {|message| message.message}.join(", ")
      render json: {errors: "#{errors}"}, status: :unprocessable_entity       
    end
  end

  # PATCH/PUT /reviews/1
  def update
    if @review.update(review_params)
      render json: ReviewSerializer.new(@review)
    else
      errors = @review.errors.map {|message| message.message}.join(", ")
      render json: {errors: "#{errors}"}, status: :unprocessable_entity       
    end
  end

  # DELETE /reviews/1
  def destroy
    if @review.destroy
      render json: {status: :ok}
    else
      render json: {errors: "There was an issue deleting your review. Please try again."}      
    end    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:rating, :description, :movie_id)
    end
end
