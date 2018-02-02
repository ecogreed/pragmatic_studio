class ReviewsController < ApplicationController
  before_action :set_movie
  def index
    @reviews = @movie.reviews
  end
  def show
  end
  def update
  end
  def destroy
  end


private

  def review_params
    params.require(:review).permit(:name,:stars,:comment,:location)
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end