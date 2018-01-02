class Home_screen < Calabash::ABase

    def initialize
        @menuHamburguer ="* android.widget.ImageButton index:0"
        @entreCadastrese = "* id:'menu_user_enter'"
        @dialogo="* text:'LEGAL, ENTENDI'"
        @telaInteira = "* id:'drawer_layout'"
        @itemQualquerDaHome = "*android.widget.RelativeLayout index:0"
        @menuPromocao ="* id:'promotion_scroll_view'"

      

        

   
    end
    


    def irTelaLogin

        sleep 10
        if(element_exists(@dialogo))
            touch @dialogo 
             
        end
        wait_for_element_exists @menuHamburguer
        touch @menuHamburguer
        wait_for_element_exists @entreCadastrese
        touch @entreCadastrese
     


    end


    def adicionarItemAoCarrinho

        wait_for_element_exists @telaInteira
        touch @telaInteira
        wait_for_element_exists @menuPromocao
        press_back_button
        wait_for_element_exists @telaInteira
        scroll_down
        wait_for_element_exists @itemQualquerDaHome
        touch @itemQualquerDaHome
        


    end


  


end

