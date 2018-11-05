https://the-clubb.herokuapp.com/

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
* Ce qui n'est pas précisé dans la vidéo c'est que cette methode nécéssite un appel depuis le fichier.html.erb concerné. Placer ce qui suit dans application.html.erb dans le body :  
```<% if flash[:info]%>
     <p class="alert alert-info"><%=flash[:info]%></p>
   <% elsif flash[:danger]%>
     <p class="alert alert-danger"><%=flash[:danger]%></p>
   <% elsif flash[:success]%>
     <p class="alert alert-success"><%=flash[:success]%></p>
   <% end%>
    <%= yield %>```  

* issue au niveau d'écraser la session user active avec le lien logout. 
