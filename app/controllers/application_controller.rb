class ApplicationController < ActionController::Base
    before_action :authorize



private

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    helper_method :current_user

    def authorize
        redirect_to login_url, alert: "Sem Permissão! Realize o Login." if current_user.nil? 
    end
end
