class ApplicationController < ActionController::Base

    def log_in_user(user_id)
        session[:user_id] = user_id
    end

    def log_out_user!
        session.delete(:user_id)
    end

end
