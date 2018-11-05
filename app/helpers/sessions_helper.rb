module SessionsHelper
    def log_in(user)
        
        p session[:user_id] = user.id
    end

    def current_user
    puts "C'EST MOI QUI FAIT CHIER : METHODE CURRENT_USER DANS SESSIONSHELPER"
     @current_user ||= User.find_by(id: session[:user_id])
    end 

    def logged_in?
        !current_user.nil?
    end
    
end
