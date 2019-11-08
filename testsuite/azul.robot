*** Settings ***
Documentation    Feature: Validar funcionalidades de busca.

Resource            ../pageobjects/objects.robot
Resource            ../functions/keywords.robot
Library             Selenium2Library
Suite Setup         Set Keyword Timeout    120s
Suite Teardown      Close All Browsers


*** Test Cases ***
1) Scenario: Checar comportamento apos clicar no botão "ida e volta"
    [Tags]   scenario1
     Given I navigate to https://www.voeazul.com.br/home
     When I click on ${IDA_E_VOLTA} button
     Then I should see text Data de retorno
        And I take sceenshot
    
    [Teardown]  Close All Browsers

2) Scenario: Checar comportamento apos clicar no botão "somente ida ou volta"
    [Tags]   scenario2
    Given I navigate to https://www.voeazul.com.br/home
    When I click on ${SOMENTE_IDA_OU_VOLTA} button
    Then I should NOT see text Data de retorno
      And I take sceenshot

    [Teardown]  Close All Browsers

3) Scenario: Checar comportamento apos clicar no botão "somente ida ou volta"
    [Tags]   scenario3
    Given I navigate to https://www.voeazul.com.br/home
    When I click on ${MULTITRECHOS} button
    Then I should see text Primeiro Trecho
      And I should see text Segundo Trecho
      And I take sceenshot

    [Teardown]  Close All Browsers

4) Scenario: Buscar passagem ida e volta para 2 adultos, exibir valor em Reais e mostrar datas flexíveis
        [Tags]   scenario7
        Given I navigate to https://www.voeazul.com.br/home
        When I click on ${IDA_E_VOLTA} button
          And I enter city into input field ${INSERIR_ORIGEM} the value CAMPINAS
          And I enter city into input field ${INSERIR_DESTINO} the value FLORIANOPOLIS
          And I enter into input field ${DATA_IDA} the value 26/02/2020
          And I enter into input field ${DATA_VOLTA} the value 05/03/2020
          And I click on ${ADICIONAR_ADULTO} button
          And I click on ${MOSTRAR_DATAS_FLEXIVEIS} button
          And I take sceenshot
          And I click on ${BUSCAR_PASSAGENS} button
        Then I should see text Selecione seu voo
          And I take sceenshot

        [Teardown]  Close All Browsers

5) Scenario: Buscar passagem somente ida ou volta para um adulto e uma criança, buscar o valor por pontos e reais
        [Tags]   scenario8
        Given I navigate to https://www.voeazul.com.br/home
        When I click on ${SOMENTE_IDA_OU_VOLTA} button
          And I click on ${SELECIONAR_ORIGEM} button
          And I take sceenshot
          And I select city ${CURITIBA}
          And I click on ${SELECIONAR_DESTINO} button
          And I select city ${FLORIANOPOLIS}
          And I enter into input field ${DATA_IDA} the value 23/01/2020
          And I click on ${ADICIONAR_ADULTO} button
          And I enter into input field ${INSERIR_CRIANCA} the value 1
          And I click on ${VALOR_EM_PONTOS_E_REAIS} button
          And I take sceenshot
          And I click on ${BUSCAR_PASSAGENS} button
        Then I should see text Selecione seu voo
          And I take sceenshot
        
        [Teardown]  Close All Browsers

6) Scenario: Buscar passagem multitrechos para dois adultos, duas crianças e um bebe, buscar valor por pontos.
        [Tags]  scenario9
        Given I navigate to https://www.voeazul.com.br/home
        When I click on ${MULTITRECHOS} button
          And I enter city into input field ${INSERIR_ORIGEM} the value São Paulo - Todos os Aeroportos (SAO)
          And I enter city into input field ${INSERIR_DESTINO} the value "Fortaleza"
          And I enter into input field ${DATA_IDA} the value 23/02/2020
          And I enter city into input field ${ORIGEM_SEGUNDO_TRECHO} the value Fortaleza
          And I enter city into input field ${DESTINO_SEGUNDO_TRECHO} the value Curitiba
          And I enter into input field ${DATA_IDA_SEGUNDO_TECHO} the value 01/03/2020
          And I click on ${ADICIONAR_ADULTO} button
          And I click on ${ADICIONAR_CRIANCA} button
          And I click on ${ADICIONAR_BEBE} button
          And I click on ${VALOR_EM_PONTOS} button
          And I take sceenshot
          And I click on ${BUSCAR_PASSAGENS} button
        Then I should see text Selecione seu voo
          And I take sceenshot

        [Teardown]  Close All Browsers

7) Scenario: Buscar passagem de ida e volta sem inserir destino
        [Tags]  scenario10
        Given I navigate to https://www.voeazul.com.br/home
        When I click on ${IDA_E_VOLTA} button
          And I enter city into input field ${INSERIR_ORIGEM} the value São Paulo - Guarulhos
          And I enter into input field ${DATA_IDA} the value 15/03/2020
          And I enter into input field ${DATA_VOLTA} the value 20/03/2020
          And I click on ${ADICIONAR_ADULTO} button
          And I click on ${MOSTRAR_DATAS_FLEXIVEIS} button
          And I take sceenshot
          And I click on ${BUSCAR_PASSAGENS} button
        Then I should see text Campo 'Chegando em:' é obrigatório!
          And I take sceenshot

        [Teardown]  Close All Browsers

8) Scenario: Buscar passagem de ida e volta sem inserir origem
        [Tags]  scenario11
        Given I navigate to https://www.voeazul.com.br/home
        When I click on ${IDA_E_VOLTA} button
          And I enter city into input field ${INSERIR_DESTINO} the value São Paulo - Guarulhos
          And I enter into input field ${DATA_IDA} the value 15/03/2020
          And I enter into input field ${DATA_VOLTA} the value 20/03/2020
          And I click on ${ADICIONAR_ADULTO} button
          And I click on ${MOSTRAR_DATAS_FLEXIVEIS} button
          And I click on ${BUSCAR_PASSAGENS} button
        Then I should see text Campo 'Saindo de:' é obrigatório!
          And I take sceenshot
        
        [Teardown]  Close All Browsers

9) Scenario: Buscar passagem de ida e volta para 0 adulto e uma criança
        [Tags]  scenario12
        Given I navigate to https://www.voeazul.com.br/home
        When I click on ${IDA_E_VOLTA} button
          And I enter city into input field ${INSERIR_ORIGEM} the value Cuiaba
          And I enter city into input field ${INSERIR_DESTINO} the value São Paulo - Guarulhos
          And I enter into input field ${DATA_IDA} the value 15/03/2020
          And I enter into input field ${DATA_VOLTA} the value 20/03/2020
          And I enter into input field ${INSERIR_NUM_ADULTOS} the value 0
          And I enter into input field ${INSERIR_CRIANCA} the value 1
          And I click on ${BUSCAR_PASSAGENS} button
        Then I should see text É necessário que pelo menos um adulto acompanhe cada criança na viagem.
          And I take sceenshot

        [Teardown]  Close All Browsers

10) Scenario: Buscar passagem de ida e volta sem inserir data de retorno
        [Tags]  scenario13
        Given I navigate to https://www.voeazul.com.br/home
        When I click on ${IDA_E_VOLTA} button
          And I enter city into input field ${INSERIR_ORIGEM} the value São Paulo - Guarulhos
          And I enter city into input field ${INSERIR_DESTINO} the value FLORIANOPOLIS
          And I enter into input field ${DATA_IDA} the value 15/03/2020
          And I click on ${ADICIONAR_ADULTO} button
          And I click on ${MOSTRAR_DATAS_FLEXIVEIS} button
          And I click on ${BUSCAR_PASSAGENS} button
        Then I should see text Campo 'Data de retorno:' é obrigatório!
          And I take sceenshot

        [Teardown]  Close All Browsers

11) Scenario: Buscar passagem de ida e volta para 0 adulto e 0 criança
        [Tags]  scenario14
        Given I navigate to https://www.voeazul.com.br/home
        When I click on ${IDA_E_VOLTA} button
          And I enter city into input field ${INSERIR_ORIGEM} the value Cuiaba
          And I enter city into input field ${INSERIR_DESTINO} the value São Paulo - Guarulhos
          And I enter into input field ${DATA_IDA} the value 15/03/2020
          And I enter into input field ${DATA_VOLTA} the value 20/03/2020
          And I enter into input field ${INSERIR_NUM_ADULTOS} the value 0
          And I click on ${BUSCAR_PASSAGENS} button
        Then I should see text É necessário que pelo menos um adulto acompanhe cada criança na viagem.
          And I take sceenshot
        
        [Teardown]  Close All Browsers