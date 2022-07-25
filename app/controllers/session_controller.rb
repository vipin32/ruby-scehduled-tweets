class SessionController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:email])

        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Logged in successfully"
        else
            flash[:alert] =  "Invalid Email or Password"
            render :new
        end
    end
    
    def logout
        session[:user_id] = nil
        redirect_to root_path, notice: "Logout successfully" 
    end
end