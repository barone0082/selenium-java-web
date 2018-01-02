Dado(/que estou no app da netshoes e vou em logar$/) do
  
    
    @home = Home_screen.new
    @home.irTelaLogin
end
  
  Entao(/clicko em cadastrar de maneira "([^"]*)"$/) do |forma|

    @loginpage = Login_screen.new
    @loginpage.irCadastro(forma)
    
  end
  
  Entao(/realizo meu cadastro como "([^"]*)"$/) do |genero|

    @cadastro = Cadastro_screen.new
    @cadastro.preencherDados(genero)
    expect((@cadastro).logou?).to be true

    
    
  end
