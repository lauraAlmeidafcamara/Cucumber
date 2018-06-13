

@valido
Dado("que eu tenha um usuário com os seguintes atributos") do |table|
    @login = table.rows_hash['login']
    @password = table.rows_hash['senha']
  end
  Quando("faço o login") do
    visit '/login'
   find('input[name="email"]').set @login
   find('input[name="password"]').set @password
   find('button[class="btn btn-info btn-sm btn-block waves-effect waves-light"]').click
   sleep (5)  
  end
  
  Então("vejo a tela inicial com a mensagem {string}") do |string|
    saudacao = find(:css,'.ng-tns-c1-0').text
   expect(saudacao).to have_content string
  end

   @Acessar_tela_Candidatos
   Dado("que eu esteja na tela Inicial") do
    inicial = find(:css,'.box-title').text
   expect(inicial).to have_content 'PERFORMANCE'
   end
  
   Quando("clicar no botão candidatos") do
     find('class="scroll-sidebar"')
   end
  
   Então("o sistema exibira a pagina de candidatos") do
    candidato=find(:css,'.width80percent').text
     expect(candidato).to eql 'Pesquisar Candidatos'
   end

  @Acessar_candidatos
  Dado("que eu esteja na tela Candidatos") do
  visit '/dashboard'
    # candidato=find('.width80percent').text
    # expect(candidato).to eql 'Pesquisar Candidatos'
    # find(:css,'#side-menu .icon-user').click
    find('a[href*="candidate"]').click

    
  end
  
  Quando("clicar no botão +") do
    find(:css,'button[class ="btn btn-success btn-withicon btn-sectiontitle btn-right"]').click
   sleep (5)
  end
  
  Então("o sistema exibira a pagina Cadastrar candidatos com a mensagem {string}") do |string|
    candidato = find(:css, ".col-sm-9").text
    expect(candidato).to have_content string
  end

   @Cadastrar_candidatos
   Dado("que eu esteja na tela para criar o candidato") do
    visit '/candidate/create'
   end
  
   Quando("preencher os dados") do
    #  @name=table.rows_hash['nome']
    #  @email=table.rows_hash['email']
    find(:css,'input[name="name"]').set("Candidato2") 
    find(:css,'input[name="email"]').set("candidato2@email.com") 

   end
  
   E ("clicar no botão salvar") do
      find(:css,'button[class="btn btn-fill btn-success tst3"]').click
    end
  
    Então("o sistema deverá salvar o candidato contendo a frase {string}") do |string|
      candidato = find(:css, ".box-title").text
      expect(candidato).to have_content string
    end
 
