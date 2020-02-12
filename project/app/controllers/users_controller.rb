class UsersController < ApplicationController

    before_action :find_user, only: [:show]

    def index
        @users = User.all
    end

    def show
        @review = Review.new
        @review.user_id = @user.id
        @hikes = Hike.all
    end

    def welcome
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :age, :bio, :username, :password)
    end

end
