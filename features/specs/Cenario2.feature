#language:pt
@cadastrar
Funcionalidade: Cadastrar candidato
Como usuário do Hapin
Posso acessar cadastrar candidatos

 @Acessar_tela_Candidatos
    Cenário: Acessar tela de Candidatos
        Dado que eu esteja na tela Inicial
        Quando clicar no botão candidatos
        Então o sistema exibira a pagina de candidatos

@Acessar_candidatos
    Cenário: Acessar tela de cadastro de candidato
        Dado que eu esteja na tela Candidatos
        Quando clicar no botão +
        Então o sistema exibira a pagina Cadastrar candidatos com a mensagem "CRIAR CANDIDATO"

 @Cadastrar_candidatos
     Cenário: Cadastrar candidato
         Dado que eu esteja na tela para criar o candidato
        Quando preencher os dados
        #  |nome|DeboraTeste|
        #  |email|deb@teste.com|
         E clicar no botão salvar
         Então o sistema deverá salvar o candidato contendo a frase "Buscar candidato"


