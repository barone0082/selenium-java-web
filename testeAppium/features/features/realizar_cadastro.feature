#language: pt
@cadastro
Funcionalidade: Realizar Cadastro
	

	@cadastroHomemNormal
    Cenario: Realizar o cadastro no aplicativo como homem
 	  Dado que estou no app da netshoes e vou em logar
    Entao clicko em cadastrar de maneira "normal"
    E realizo meu cadastro como "homem"


   @cadastroMulherFacebook
      Cenario: Realizar o cadastro no aplicativo como mulher
    	Dado que estou no app da netshoes e vou em logar
      Entao clicko em cadastrar de maneira "facebook"
      E realizo meu cadastro como "mulher"

   



