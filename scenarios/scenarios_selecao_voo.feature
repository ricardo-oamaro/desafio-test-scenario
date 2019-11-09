Feature: Validar as funcionalidades de seleção de voo.
    Scenario 1: Validar resumo do voo na barra superior da pagina de seleção de voos.
        Given I navigate to https://www.voeazul.com.br/home
          And I click on "ida e volta" button
          And I enter city into input field "Saindo de:" the value "São Paulo - Guarulhos"
          And I enter city into input field "Chegando em:" the value "Florianópolis"
          And I enter into input field "Data de partida" the value "15/03/2020"
          And I enter into input field "Data de retorno" the value "20/03/2020"
          And I click on "Mostrar datas flexíveis" checkbox
          And I click on "Buscar Passagens" button
        When I see text "Selecione seu voo"
        Then I should see "origem e destino do voo"
          And I should see "data de ida"
          And I should see "data de volta"
          And I should see "quantidade de passageiros"
          And I should see "total a pagar"

    Scenario 2: Validar seleção de botões de parcelamento de passagem
        Given I navigate to https://www.voeazul.com.br/home
          And I click on "ida e volta" button
          And I enter city into input field "Saindo de:" the value "São Paulo - Guarulhos"
          And I enter city into input field "Chegando em:" the value "Florianópolis"
          And I enter into input field "Data de partida" the value "15/03/2020"
          And I enter into input field "Data de retorno" the value "20/03/2020"
          And I click on "Mostrar datas flexíveis" checkbox
          And I click on "Buscar Passagens" button
        When I see text "Selecione seu voo"
        Then I should see text "origem e destino do voo"
          And I should see text "data de ida"
          And I should see text "data de volta"
          And I should see text "quantidade de passageiros"
          And I should see text "total a pagar"

    Scenario 3: Validar tempo estimado de 10 minutos para completar a sessão
        Given I navigate to https://www.voeazul.com.br/home
          And I click on "ida e volta" button
          And I enter city into input field "Saindo de:" the value "São Paulo - Guarulhos"
          And I enter city into input field "Chegando em:" the value "Florianópolis"
          And I enter into input field "Data de partida" the value "15/03/2020"
          And I enter into input field "Data de retorno" the value "20/03/2020"
          And I click on "Buscar Passagens" button
        When I see text "Selecione seu voo"
        Then I should see text "Você tem 10 minutos para completar essa etapa do fluxo."

    Scenario 4: Validar total em pontos
        Given I navigate to https://www.voeazul.com.br/home
          And I click on "ida e volta" button
          And I enter city into input field "Saindo de:" the value "São Paulo - Guarulhos"
          And I enter city into input field "Chegando em:" the value "Florianópolis"
          And I enter into input field "Data de partida" the value "15/03/2020"
          And I enter into input field "Data de retorno" the value "20/03/2020"
          And I click on "Buscar Passagens" button
        When I click on "pontos" button
        Then I should see text "total em pontos:"

    Scenario 5: Validar botão prosseguir
        Given I navigate to https://www.voeazul.com.br/home
          And I click on "ida e volta" button
          And I enter city into input field "Saindo de:" the value "São Paulo - Guarulhos"
          And I enter city into input field "Chegando em:" the value "Florianópolis"
          And I enter into input field "Data de partida" the value "15/03/2020"
          And I enter into input field "Data de retorno" the value "20/03/2020"
          And I click on "Buscar Passagens" button
        When I see text "Selecione seu voo"
        Then I should see "Prosseguir" button