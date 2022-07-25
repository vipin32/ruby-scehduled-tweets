class MainController < ApplicationController
    def index
        # flash[:notice] = "cjeckl ljl";
        # flash[:alert] = "cjeckl ljl";
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
        end

    end
end

