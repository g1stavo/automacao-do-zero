# language: pt

Funcionalidade: Saque
    Sendo um cliente correntista do banco
    Posso fazer saque de dinheiro
    Para que eu possa comprar em estabelecimentos que não aceitem cartão

Cenário: Saque de dinheiro
    Dado que eu tenho uma conta com R$100
    Quando faço um saque no valor de R$10
    Então meu saldo final deve ser de R$90
    E vejo a seguinte mensagem "Saque com sucesso."
    
Cenário: Saldo insuficiente
    Dado que eu tenho uma conta com R$100
    Quando faço um saque no valor de R$110
    Então meu saldo final deve ser de R$100
    E vejo a seguinte mensagem "Saldo insuficiente."