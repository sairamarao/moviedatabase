class ReviewsController < ApplicationController
  def create
  	@movie=Movie.find(params[:movie_id])
  	@review=@movie.reviews.build(params[:review])
  	@review.save
  	redirect_to @movie
  end
  def destroy
  	@review=Review.find(params[:id])
  	@review.destroy
  	redirect_to @review.movie
  end
 end
