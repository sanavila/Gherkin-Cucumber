      #language: pt

      Funcionalidade: Tela de cadastro - Checkout
      Como cliente da EBAC-SHOP
      Quero fazer concluir meu cadastro
      Para finalizar minha compra

      Contexto:
      Dado que eu acesse a tela de login

      Esquema do Cenário: Cadastrado com sucesso
      Quando eu preencher os seguintes dados <nome>, <sobrenome>, <pais>, <end>, <cidade>, <cep>, <tel> e <email>
      E clicar em "finalizar compra"
      Então exibir <mensagem> de sucesso
      Exemplos:

      | nome    | sobrenome | pais     | end            | cidade  | cep        | tel      | email               | mensagem                         |
      | Fabiola | Fernandez | Colombia | R.Gonzalez     | Bogotá  | 6100000    | 77778888 | fabiola_fe@ebac.com | "Compra finalizada com sucesso!" |
      | Adan    | Huanca    | Bolívia  | C. Santa Maria | 6100200 | Cochabamba | 77775888 | adanuanca@ebac.com  | "Compra finalizada com sucesso!" |

      Esquema do Cenário: Email inválido
      Quando eu digitar <email> inválido
      Então exibir <mensagem> de alerta

      Exemplos:
      | email               | mensagem           |
      | adanuancaebac.com   | "E-mail inválido!" |
      | fabiola_fe2ebac.com | "E-mail inválido!" |

      Cenário: Campos vazios
      Quando eu preencher <nome>, <sobrenome>, <pais>, <end>, <cidade>, <cep>, <tel> e <email>
      E clicar em "finalizar compra"
      Então exibir <mensagem> de erro

      | nome | sobrenome | pais     | end | cidade  | cep      | tel | email               | mensagem                                                               |
      |      |           | Colombia |     | 6100000 | 77778888 |     | fabiola_fe@ebac.com | "Cadastro não pode ser concluído, por favor preencha todas os campos!" |
