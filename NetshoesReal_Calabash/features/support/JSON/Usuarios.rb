USUARIO ||= {
    
      NovoUsuario:
          {
             nome:Faker::Name.name,
             sobrenome:Faker::Name.name,
             cpf:CPF.generate,
             telefone1:"1141"<<Faker::Number.number(6),
             telefone2:"11985"<<Faker::Number.number(6),
             email:Faker::Number.number(6)<<"@gmail.com",
             senha:"1234567",
             confirmaSenha:"1234567",
             cep:"06420080",
             numero:"80",
             numerocasa:"123",
             complemento:Faker::Address.street_address,
             bairro:Faker::Address.city_prefix,
             cidade:Faker::Address.state
          },


          UsuarioParaLogar:
        {

          email:"teste3233232@hotmail.com",
          cpf:67245571783,
          senha:1234567
        }
          
   
     
    }