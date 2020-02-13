class ApplicationController < ActionController::Base

    helper_method :current_user

    def current_user
        sesson[:current_username] = params[:username]
    end

end
