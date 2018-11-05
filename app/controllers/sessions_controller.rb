
class SessionsController < ApplicationController
    def new 
    end

    def create 
        @user = User.find_by(email: params[:session][:email].downcase)
        puts "#{params[:session][:email].downcase}"
        if @user 
            puts "le user existe --> #{@user}"
            log_in @user 
            redirect_to sessions_show_path

        else 
            flash.now[:danger] = "l'email saisie est inconnu"
            render 'new'
            puts "le user existe pas :( !!"
        end
    end

    def destroy
        session.delete(:user_id)
        @current_user = nil
        redirect_to '/', flash: {success: "You are disconnected"}    
    end


    def show 
        unless logged_in?
            redirect_to login_path
        end 

    @first_name = @current_user.first_name

        puts "user ID= #{@current_user.id}"
        puts "user Fisrt= #{@current_user.first_name}"
    end

    def club
    end
    
end
