class ReviewsController < ApplicationController

    before_action :find_review, only: [:show, :edit, :update, :destroy]

    def show
    end

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        if @review.valid?
            redirect_to user_path(@review.user)
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to user_path(@review.user)
        end
    end

    def edit
    end

    def update
    end

    def destroy
        @user = @review.user
        @review.destroy
        redirect_to user_path(@user)
    end


    private

    def review_params
        params.require(:review).permit(:rating, :description, :user_id, :hike_id)
    end

    def find_review
        @review = Review.find(params[:id])
    end

end
