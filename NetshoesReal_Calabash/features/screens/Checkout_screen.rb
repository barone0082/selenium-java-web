class Checkout_screen < Calabash::ABase
    
    
    
    def initialize 
    
  @botaoContinuar = "* id:'btnCheckout'"
  @confirmarAgendada =  "* text:'OK'"
  @boleto = "* id:'payment_boleto_option'"
  @cartao = "* id:'payment_card_radio'"      
  @subtotalCheckout = "*id:'tvSubtotal'"
  @elementoDosRadios = "* id:'freight_view'"
    end

    def selecionarFormaEntrega(formaEntrega)
        
        wait_for_element_exists @botaoContinuar
        touch @botaoContinuar
        

        if formaEntrega=="agendada"
                wait_for_element_exists @elementoDosRadios
                touch "* android.widget.RadioGroup index:2"
                wait_for_element_exists @confirmarAgendada
                touch @confirmarAgendada
            elsif formaEntrega=="normal"
                wait_for_element_exists @elementoDosRadios
                touch "* android.widget.RadioGroup index:0"
                elsif formaEntrega=="expressa"
                    wait_for_element_exists @elementoDosRadios
                touch "* android.widget.RadioGroup index:1"
        end


             


    end

    def selecionarMeioPagamento(tipo)

        if tipo=="boleto"
            wait_for_element_exists @boleto
            touch @boleto
            elsif tipo=="cartao"
            wait_for_element_exists @cartao
            touch @cartao    


        end




    end

            
end


    
    