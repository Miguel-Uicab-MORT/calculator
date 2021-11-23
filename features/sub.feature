# language: pt

Funcionalidade: Subtração
    Esquema do Cenario: validacao sucesso
        Quando subtrair <primeiro numero> de <segundo numero>
        Então o resultado da subtracao deve ser <resultado>

        Exemplos: Valores sucesso
            | primeiro numero | segundo numero | resultado |
            | 4               | 2              | 2.0       |
            | 4.0             | 2.0            | 2.0       |
            | 4               | 2.0            | 2.0       |
            | 4.0             | 2              | 2.0       |

    Esquema do Cenario: validacao falha
        Quando subtrair <primeiro numero> de <segundo numero>
        Então deverá aparecer da subtracao "Valores inválidos, por favor utilize apenas números"

        Exemplos: Valores falha
            | primeiro numero | segundo numero |
            | 2               | a              |
            | 2.0             | a              |
            | a               | 2              |
            | a               | 2.0            |