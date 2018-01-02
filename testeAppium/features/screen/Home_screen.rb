class Home_screen < Appium::Driver

    def initialize

        @popupInicio = find_element(:id,'generic_dialog_positive')
      # @menuHamburguer=find_element(:id,'drawer_open').getAttribute("contentDescription")

       

    end

    def popuphome
      @popupInicio.click
     

    end


end