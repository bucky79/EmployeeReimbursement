class LoginController < ApplicationController
    def index
    end
    def login
        username = params[:email]
        password = params[:password]
        return unless username.present? && password.present?
        
        user = User.find_by(email: username)
        if user && user.authenticate(params[:password])
            session[:email] = user.email
            session[:user_name] = user.name
            session[:role_type] = user.role_type
            session[:employee_id] = user.id
            redirect_to '/dashboard'
        else
            redirect_to root_path, alert: 'Invalid Credentials'
        end
    end

    def logout
        reset_session
        redirect_to root_path
    end
end
