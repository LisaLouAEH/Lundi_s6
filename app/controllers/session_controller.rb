class SessionController < ApplicationController
    def new 
    end

    def create 
        user = User.find_by(email: params[:session][:email].downcase)
        if user 
            log_in user 
            redirect_to user
        else 
            flash.now[:danger] = "Invalid email"
            render 'new'
        end
    end

    def destroy 
    end
end
