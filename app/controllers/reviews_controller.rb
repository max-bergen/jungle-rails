class ReviewsController < ApplicationController

  # has_many :reviews

  def create

    @review = Review.new({
      product_id:params["product_id"],
      description:params["review"]["description"],
      rating:params["review"]["rating"]})
      @review.user = current_user
    if @review.save
      redirect_to "/products/#{params[:product_id]}"
    else
       redirect_to "/products/#{params[:product_id]}"
    end
  end





end
