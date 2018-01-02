class Login_screen < Calabash::ABase

    def initialize
        @entrarNormal = "* id:'sign_up'"
        @emailCpfLogar="* id:'signin_email'"
        @senha="* id:'signin_pass'"
        @botaoEntrar="* id:'signin_enter'"

    end



    def irCadastro(forma)

        
        if forma=="normal"
            wait_for_element_exists @entrarNormal
        touch @entrarNormal
        end

 

    end


    def fazerLogin(meio)
        
        
        wait_for_element_exists @emailCpfLogar
        touch  @emailCpfLogar


        if meio=="email"
        keyboard_enter_text   USUARIO[:UsuarioParaLogar][:email] 
        hide_soft_keyboard    
        elsif meio=="cpf"
        keyboard_enter_text   USUARIO[:UsuarioParaLogar][:cpf]
        hide_soft_keyboard          
        end
        wait_for_element_exists @senha
        touch @senha
        keyboard_enter_text  USUARIO[:UsuarioParaLogar][:senha]  
        hide_soft_keyboard   

        touch @botaoEntrar
    end



    def logou?
        
          sleep 5
      
           element_exists"*id:'menu_user'"
           
      end
        

end