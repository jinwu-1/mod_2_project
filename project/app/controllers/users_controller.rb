class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @review = Review.new
        @review.user_id = @user.id
        @hikes = Hike.all
    end

end
