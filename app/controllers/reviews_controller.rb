class ReviewsController < ApplicationController

  before_action :set_restaurant

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    if @review.save # return false if validations don't pass
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
 end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end

end

