Feature: Validar as funcionalidades de busca.
    Scenario 1: Checar comportamento apos clicar no botão "ida e volta"
        Given I open website https://www.voeazul.com.br/home
         When I click on "ida e volta" button
         Then field "Data de retorno" should be displayed
    
    Scenario 2: Checar comportamento apos clicar no botão "somente ida ou volta"
        Given I open website https://www.voeazul.com.br/home
         When I click on "somente ida ou volta" button
         Then field "Data de retorno" should be not displayed

    Scenario 3: Checar comportamento apos clicar no botão "multitrechos"
        Given I open website https://www.voeazul.com.br/home
         When I click on "multitrechos" button
         Then field "Primeiro Trecho" should be displayed
          And field "Segundo Trecho" should be displayed
   
    Scenario 4: Validar comportamento apos clicar no botão "reais"
        Given I open website https://www.voeazul.com.br/home
         When I click on "reais" button
         Then button "reais" should be selected in blue
   
    Scenario 5: Validar comportamento apos clicar no botão "pontos + reais"
        Given I open website https://www.voeazul.com.br/home
         When I click on "pontos + reais" button
         Then button "pontos + reais" should be selected in blue
   
    Scenario 6: Validar comportamento apos clicar no botão "pontos"
        Given I open website https://www.voeazul.com.br/home
         When I click on "pontos" button
         Then button "pontos" should be selected in blue

    Scenario 7: Buscar passagem ida e volta para 2 adultos, exibir valor em Reais e mostrar datas flexíveis
        Given I open website https://www.voeazul.com.br/home
        When I click on "ida e volta" button
          And I enter into input field "Saindo de:" the value "São Paulo - Guarulhos"
          And I enter into input field "Chegando em:" the value "Florianópolis"
          And I enter into input field "Data de partida" the value "15/03/2020"
          And I enter into input field "Data de retorno" the value "20/03/2020"
          And I click on "plus" button in "Adulto(s)" section
          And I click on "Mostrar datas flexíveis" checkbox
          And I click on "Buscar Passagens" button
        Then I should see a list of flight (price/departure) available with flexible dates, listed by Real price.

    Scenario 8: Buscar passagem somente ida ou volta para um adulto e uma criança, buscar o valor por pontos e reais, mostrando datas flexiveis
        Given I open website https://www.voeazul.com.br/home
        When I click on "somente ida ou volta" button
          And I enter into input field "Saindo de:" the value "Curitiba"
          And I enter into input field "Chegando em:" the value "Fortaleza"
          And I enter into input field "Data de partida" the value "23/01/2020"
          And I enter into input field "Criança(s)" the value "1"
          And I click on "pontos + reais" button
          And I click on "Mostrar datas flexíveis" checkbox
          And I click on "Buscar Passagens" button
        Then I should see a list of flight (price/departure) available with flexible dates, listed by points and Real price.
    
    Scenario 9: Buscar passagem multitrechos para dois adultos, duas crianças e um bebe, buscar valor por pontos.
        Given I open website https://www.voeazul.com.br/home
        When I click on "multitrechos" button
          And I enter into input field "Primeiro Trecho Saindo de:" the value "São Paulo"
          And I enter into input field "Chegando em:" the value "Fortaleza"
          And I enter into input field "Data de partida" the value "23/02/2020"
          And I enter into input field "Segundo Trecho Saindo de:" the value "Fortaleza"
          And I enter into input field "Chegando em:" the value "Curitiba"
          And I enter into input field "Data de partida" the value "01/03/2020"
          And I add on "Adulto(s)" the value "1"
          And I add on "Criança(s)" the value "1"
          And I add on "Bebe(s)" the value "1"
          And I click on "pontos" button
          And I click on "Buscar Passagens" button
        Then I should see a list of flight (price/departure) available listed by points price.

    Scenario 10: Buscar passagem de ida e volta sem inserir destino
        Given I open website https://www.voeazul.com.br/home
        When I click on "ida e volta" button
          And I enter into input field "Saindo de:" the value "São Paulo - Guarulhos"
          And I click on "Data de partida" button
          And I enter into input field "Data de partida" the value "15/03/2020"
          And I enter into input field "Data de retorno" the value "20/03/2020"
          And I add on "Adulto(s)" the value "1"
          And I click on "Mostrar datas flexíveis" checkbox
          And I click on "Buscar Passagens" button
        Then I should see error message: "Fique ligado! Campo 'Chegando em:' é obrigatorio!"

    Scenario 11: Buscar passagem de ida e volta sem inserir origem
        Given I open website https://www.voeazul.com.br/home
        When I click on "ida e volta" button
          And I enter into input field "Chegando em:" the value "São Paulo - Guarulhos"
          And I click on "Data de partida" button
          And I enter into input field "Data de partida" the value "15/03/2020"
          And I enter into input field "Data de retorno" the value "20/03/2020"
          And I add on "Adulto(s)" the value "1"
          And I click on "Mostrar datas flexíveis" checkbox
          And I click on "Buscar Passagens" button
        Then I should see error message: "Fique ligado! Campo 'Saindo de:' é obrigatorio!"

    Scenario 12: Buscar passagem de ida e volta para 0 adulto e uma criança
        Given I open website https://www.voeazul.com.br/home
        When I click on "ida e volta" button
          And I enter into input field "Saindo de:" the value "Cuiaba"
          And I enter into input field "Chegando em:" the value "São Paulo - Guarulhos"
          And I enter into input field "Data de partida" the value "15/03/2020"
          And I enter into input field "Data de retorno" the value "20/03/2020"
          And I enter into input field  "Adulto(s)" the value "0"
          And I add on "Criança(s)" the value "1"
          And I click on "Buscar Passagens" button
        Then I should see error message: "É necessário que pelo menos um adulto acompanhe cada criança na viagem. Verifique novamente os passageiros para continuar. Em caso de dúvidas, entre em contato com o call center da Azul (4003-1118)"

    Scenario 13: Buscar passagem de ida e volta sem inserir data de retorno
        Given I open website https://www.voeazul.com.br/home
        When I click on "ida e volta" button
          And I enter into input field "Chegando em:" the value "São Paulo - Guarulhos"
          And I click on "Data de partida" button
          And I enter into input field "Data de partida" the value "15/03/2020"
          And I add on "Adulto(s)" the value "1"
          And I click on "Mostrar datas flexíveis" checkbox
          And I click on "Buscar Passagens" button
        Then I should see error message: "Campo Obrigatorio!"
    
    Scenario 14: Buscar passagem de ida e volta para 0 adulto e uma criança
        Given I open website https://www.voeazul.com.br/home
        When I click on "ida e volta" button
          And I enter into input field "Saindo de:" the value "Cuiaba"
          And I enter into input field "Chegando em:" the value "São Paulo - Guarulhos"
          And I enter into input field "Data de partida" the value "15/03/2020"
          And I enter into input field "Data de retorno" the value "20/03/2020"
          And I enter into input field  "Adulto(s)" the value "0"
          And I add on "Criança(s)" the value "1"
          And I click on "Buscar Passagens" button
        Then I should see error message: "Fique ligado! Campo 'Data de Partida:' é obrigatório!"