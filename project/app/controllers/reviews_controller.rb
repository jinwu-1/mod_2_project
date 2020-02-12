class ReviewsController < ApplicationController

    def show
        @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
        @hikes = Hike.all
    end

    def create
        @review = Review.create(review_params)
        redirect_to
    end


    private

    def review_params
        params.require(:review).permit(:rating, :description, :user_id, :hike_id)
    end

end
