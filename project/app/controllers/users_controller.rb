class UsersController < ApplicationController

    def show
        @user = find_me
    end




    private

    def find_me
        User.find(params[:id])
    end

end
