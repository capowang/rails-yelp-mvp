class ReviewsController < ApplicationController
    def new
      @restaurant = Restaurant.find(params[:restaurant_id])
      @review = Review.new
    end

    def create
      @review = Review.new(review_params)
      @restaurant = Restaurant.find(params[:restaurant_id])
       #is this good?
      if @review.save #whether it is actually saved
        redirect_to @restaurant
      else
        render 'new' #why this is same
      end

    end

    private

    def review_params
      params.require(:review).permit(:rating, :content, :restaurant_id)
    end

end