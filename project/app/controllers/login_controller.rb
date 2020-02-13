class LoginController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user
            redirect_to user_path(@user)
        else
            flash[:errors] = [ "User doesn't exist or invalid password" ]
            redirect_to new_login_path
        end
    end

    def destroy
        session.delete :username
    end
    
end