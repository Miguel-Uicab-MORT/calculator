# language: pt

Funcionalidade: Soma
    Esquema do Cenario: validacao sucesso
        Quando somar <primeiro numero> com <segundo numero>
         Então o resultado deve ser <resultado>

        Exemplos: Valores sucesso
            | primeiro numero | segundo numero | resultado |
            | 2               | 2              | 4.0       |
            | 2.0             | 2.0            | 4.0       |
            | 2.0             | 2              | 4.0       |
            | 2               | 2.0            | 4.0       |
    
    Esquema do Cenario: validacao de string
        Quando somar <primeiro numero> com <segundo numero>
         Então deverá aparecer "Valores inválidos, por favor utilize apenas números"


        Exemplos: Valores erro
            | primeiro numero | segundo numero |
            | 2               | a              |
            | 2.0             | a              |
            | a               | 2              |
            | a               | 2.0            |
