class Cadastro_screen < Calabash::ABase




    def initialize
        @nome = "* id:'register_name'"
        @sobrenome = "* id:'register_lastname'"
        @dataNascimento = "* id:'register_birth'"
        @cpf = "* id:'register_cpf'"
        @telefone1 = "* id:'register_phone_1'"
        @telefone2 = "* id:'register_phone_3'"
        @email = "* id:'register_email'"
        @senha = "* id:'signin_pass'"
        @confirmaSenha = "* id:'llRegisterConfirmPassword'"
        @cep = "* id:'address_edit_zip'"
        @numero = "* id:'address_edit_number'"
        @complemento = "* id:'address_edit_complement'"
        @bairro = "* id:'address_edit_district'"
        @cidade = "* id:':address_edit_city'"
        @botaoCadastrar = "* id:'register_submit'"

    end


    def preencherDados(genero) 

        wait_for_element_exists @nome
       touch @nome
       keyboard_enter_text USUARIO[:NovoUsuario][:nome]
       hide_soft_keyboard
       wait_for_element_exists @sobrenome
       touch @sobrenome
       keyboard_enter_text USUARIO[:NovoUsuario][:sobrenome]
       hide_soft_keyboard

       if genero=="homem"

        touch "* id:'register_male'"

       elsif genero=="mulher"

        touch "* id:'register_female'"

       end

       wait_for_element_exists @dataNascimento

        touch @dataNascimento


      #tentativa normal
      #ano=1996
      # query("*android.widget.NumberPicker index:0",setValue:dia)
      # query("*android.widget.NumberPicker index:1",setText:'jun')
      # query("*android.widget.NumberPicker index:2",setValue:ano)

       #query("datePicker",{:android.widget.NumberPicker => :index:2, :bounds => [314,789][538,1020]})

        #tentativa while
        #while query("* android.widget.NumberPicker index:2 '"!= 1997)  do

        #pan("* id:'year'",:down)

        #end

       #binding.pry DEBUG PRY

       for i in 0..9
        pan("* id:'year'",:down)

       end


      
       touch "* id:'material_dialog_positive'"


       wait_for_element_exists @cpf
       touch @cpf
       keyboard_enter_text USUARIO[:NovoUsuario][:cpf]
       hide_soft_keyboard
      # wait_for_element_exists @telefone1
       touch @telefone1
       keyboard_enter_text USUARIO[:NovoUsuario][:telefone1]
       hide_soft_keyboard
       wait_for_element_exists @telefone2
       touch @telefone2
       keyboard_enter_text USUARIO[:NovoUsuario][:telefone2]
       hide_soft_keyboard
       scroll_down
       touch @email
       keyboard_enter_text  USUARIO[:NovoUsuario][:email]
       hide_soft_keyboard
       #wait_for_element_exists @senha
       touch @senha
       keyboard_enter_text USUARIO[:NovoUsuario][:senha]
       hide_soft_keyboard
       #wait_for_element_exists @confirmaSenha
       touch @confirmaSenha
       keyboard_enter_text USUARIO[:NovoUsuario][:senha]
       hide_soft_keyboard
       scroll_down
       #wait_for_element_exists @cep
       touch @cep
       keyboard_enter_text  USUARIO[:NovoUsuario][:cep]
       hide_soft_keyboard
      # touch ("* id:'address_edit_type'")
      # touch("* text:'Ladeira'")
       wait_for_element_exists @numero
       touch @numero
       keyboard_enter_text  USUARIO[:NovoUsuario][:numero]
       hide_soft_keyboard
       scroll_down
       wait_for_element_exists @botaoCadastrar
       touch @botaoCadastrar
     






    

    end





    def logou?
      
        wait_for_element_exists "* id:'material_dialog_positive'"
        touch "* id:'material_dialog_positive'"
        sleep 5
         puts "chegou"        
         element_exists"*id:'menu_user'"
         
	end



  

end
