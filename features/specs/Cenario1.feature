#language:pt
@login
Funcionalidade: Login
Como usuário do Hapin
Posso acessar o sistema
@valido
Cenário: Usuário faz login

    Dado que eu tenha um usuário com os seguintes atributos
        |login|teste2@teste.com|
        |senha|teste123|
    Quando faço o login
    Então vejo a tela inicial com a mensagem "OLÁ, LAURATESTE2 "

# @invalido
# Cenário: Usuário faz login com usuário inválido

#     Dado que eu tenha um usuário com os seguintes atributos
#          |login|teste3@teste.com|
#         |senha|teste123|
#     Quando faço o login
#     Então o sistema não deverá permitir meu login " "



    
    


