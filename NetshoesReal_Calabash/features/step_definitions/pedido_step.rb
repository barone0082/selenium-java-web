#enconding UTF-8


Dado(/que estou logado pelo "([^"]*)"$/) do |meio|
  @home=Home_screen.new
  @home.irTelaLogin
 
  @login = Login_screen.new
  @login.fazerLogin(meio)

  
  expect((@login).logou?).to be true
  
end

E(/apos logar seleciono um item e adiciono ao carrinho$/) do
  
  @home.adicionarItemAoCarrinho
  
  @pdp = Pdp_screen.new
  @pdp.colocarItemAoCarrinho
  expect((@pdp).adicionou?).to be true
  @pdp.continuarCarrinho
 
  
end



E(/escolho forma de entrega "([^"]*)"$/) do |formaEntrega|

  @checkoutScreen = Checkout_screen.new
  @checkoutScreen.selecionarFormaEntrega(formaEntrega)
end



Entao(/finalizo a compra por "([^"]*)"$/) do |tipo|

@checkoutScreen.selecionarMeioPagamento(tipo)
  
end
