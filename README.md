##erreur 1 :  
* impossible d'afficher le flash danger avec ces lignes de code(pas de msg d'erreur):
```def create 
        user = User.find_by(email: params[:session][:email].downcase)
        if user 
            #login
        else 
            flash.now[:danger] = "Invalid email"
            render 'new'
        end
    end```  
*