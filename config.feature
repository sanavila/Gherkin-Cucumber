                  #language: pt

                  Funcionalidade: Configurar produto

                  Como cliente da EBAC-SHOP
                  Quero configurar meu produto de acordo com meu tamanho e gosto
                  E escolher a quantidade
                  Para depois inserir no carrinho

                  Contexto:
                  Dado que eu acesse a página do produto

                  Esquema do Cenário: Compra válida
                  Quando eu escolher <tamanho> <cor> e <quantidade>
                  Então o sistema deve aceitar meu pedido

                  Exemplos:
                  | tamanho | cor    | quantidade |
                  | XS      | Blue   | 1          |
                  | S       | Orange | 2          |
                  | M       | Red    | 3          |
                  | XL      | Red    | 10         |

                  Cenário: Tamanho não selecionado
                  Quando eu escolher cor "blue" e 10 produtos
                  Então o sistema não deve aceitar meu pedido

                  Cenário: Cor não selecionada
                  Quando eu escolher tamanho XL e 10 produtos
                  Então o sistema não deve aceitar meu pedido

                  Esquema do Cenário: Quantidade excedente a 10
                  Quando eu escolher <tamanho>, <cor> e <quantidade>
                  Então o sistema não deve aceitar meu pedido

                  Exemplos:
                  | tamanho | cor    | quantidade |
                  | XS      | Blue   | 20         |
                  | S       | Orange | 21         |
                  | M       | Red    | 30         |
                  | XL      | Red    | 11         |

                  Esquema do Cenário: Limpar produtos
                  Quando eu clicar em limpar
                  Então voltar ao estado original
