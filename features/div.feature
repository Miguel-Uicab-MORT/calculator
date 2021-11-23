# language: pt

Funcionalidade: Divisão
    Esquema do Cenario: validacao sucesso
        Quando dividir <primeiro numero> por <segundo numero>
        Então o resultado da divisao deve ser <resultado>

        Exemplos: Valores sucesso
            | primeiro numero | segundo numero | resultado |
            | 3               | 3              | 1.0       |
            | 3.0             | 3.0            | 1.0       |
            | 3               | 3.0            | 1.0       |
            | 3.0             | 3              | 1.0       |

    Esquema do Cenario: validacao falha
        Quando dividir <primeiro numero> por <segundo numero>
        Então deverá aparecer da divisao "Valores inválidos, por favor utilize apenas números"

        Exemplos: Valores falha
            | primeiro numero | segundo numero |
            | 3               | a              |
            | 3.0             | a              |
            | a               | 3              |
            | a               | 3.0            |