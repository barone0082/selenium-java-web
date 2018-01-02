class Pdp_screen < Calabash::ABase



    def initialize 

        @tamanhoQualquerPdp = "* id:'attribute_size_available'"
        @botaoComprar="* id:'progress_button_text'"
        @pagePDP = "* id:'product_scroll'"
        @irCarrinho = "* id:'dialog_stamps_cart'"

    end


    def colocarItemAoCarrinho

        wait_for_element_exists @pagePDP
        scroll_down
        touch @tamanhoQualquerPdp
        scroll_down
        wait_for_element_exists @botaoComprar
        touch @botaoComprar

    end

    def continuarCarrinho
        wait_for_element_exists @irCarrinho
        touch @irCarrinho

    end


    def adicionou?
    wait_for_element_exists "* id:'dialog_stamps_title'"
      element_exists "* id:'dialog_stamps_title'"
    
    end
        
        
end

