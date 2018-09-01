# language: pt

Funcionalidade: Cadastro de usuário
    Sendo um visitante do site
    Posso fazer meu cadastro com nome, email e senha
    Para que eu possa anunciar meu veículo usado

@sprint1 @smoke
Cenário: Cadastro simples
    Dado que estou na página de cadastro
    Quando faço o meu cadastro com 
        | nome  | fernando     |
        | email | eu@papito.io |
        | senha | 123456       |
    Então sou autenticado com sucesso