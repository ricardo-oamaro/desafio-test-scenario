*** Settings ***
Documentation    Feature: Validar funcionalidades de busca e seleção de voos.

Suite Setup         Run keywords   Set Keyword Timeout    120s
Suite Teardown      Close All Browsers


*** Test Cases ***
1) Scenario: Checar comportamento apos clicar no botão "ida e volta"
     Given I open website https://www.voeazul.com.br/home
     When I click on ${IDA_E_VOLTA} button
     Then field "Data de retorno" should be displayed
        And I take sceenshot
    
    [Teardown]  Close All Browsers