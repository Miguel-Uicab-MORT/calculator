# language: pt

Funcionalidade: Multiplicação
    Esquema do Cenario: validacao sucesso
        Quando multiplicar <primeiro numero> de <segundo numero>
        Então o resultado da multiplicacao deve ser <resultado>

        Exemplos: Valores sucesso
            | primeiro numero | segundo numero | resultado |
            | 3               | 3              | 9.0       |
            | 3.0             | 3.0            | 9.0       |
            | 3               | 3.0            | 9.0       |
            | 3.0             | 3              | 9.0       |

    Esquema do Cenario: validacao falha
        Quando multiplicar <primeiro numero> de <segundo numero>
        Então deverá aparecer da multiplicacao "Valores inválidos, por favor utilize apenas números"

        Exemplos: Valores falha
            | primeiro numero | segundo numero |
            | 3               | a              |
            | 3.0             | a              |
            | a               | 3              |
            | a               | 3.0            |