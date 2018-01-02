#language: pt
@pedido
Funcionalidade: Realizar fechamento de pedidos 


@pedidoCpfAgendadaBoleto
Cenario: Realizar fechamento de pedido com boleto
Dado que estou logado pelo "cpf"
E apos logar seleciono um item e adiciono ao carrinho
E escolho forma de entrega "agendada"
Entao finalizo a compra por "boleto"



@pedidoBoletoEmail
Cenario: Realizar fechamento de pedido com boleto
Dado que estou logado pelo "email"
Entao seleciono um item e adiciono ao carrinho
E finalizo a compra por "boleto"






