      #language: pt

      Funcionalidade: Login na plataforma
      Como cliente da EBAC-SHOP
      Quero fazer o login (autenticação) na plataforma
      Para visualizar meus pedidos

      Contexto:
      Dado que eu acesse a tela de login

      Esquema do Cenário: Dados válidos
      Quando eu digitar usuário <email> com a senha <senha>
      E clicar em "login"
      Então o usuário deve ser direcionado para a tela de Checkout

      Exemplos:
      | email                  | senha  |
      | fer_goncalves@ebac.com | 123456 |
      | fabio_akita@ebac.com   | 56898  |

      Esquema do Cenário: Dados inválidos
      Quando eu digitar usuário <email> com a senha <senha>
      E clicar em "login"
      Então deve exibir uma <mensagem>

      Exemplos:
      | email                  | senha  | mensagem                     |
      | fer_goncalves2ebac.com | 123456 | "Usuário ou senha inválidos" |
      | fabio_akita@ebac.com   | inval  | "Usuário ou senha inválidos" |
