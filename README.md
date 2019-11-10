# Desafio CI&T
=================================
## Instalação do Robot Framework:
    1. Instale o Python acessando https://www.python.org/;
    2. Abra o terminal como administrador e rode o comando "python -m pip install --upgrade pip" para fazer a instalação do PIP INSTALL;
    3. Rode o comando "pip install robotframework" para instalar o Robot Framework;
    4. Rode o comando "pip install robotframework-selenium2library" para instalação da Biblioteca SELENIUM2LIBRARY;

## Configurando Webdriver:
   1. Faça o download do projeto cliando em Clone or Download;
   2. Extraia os arquivos zip;
   3. Acesse a pasta do projeto e copie o endereço da pasta webdrivers.
   4. Configure o PATH acessando o painel de controle > Sistema > Configurações avançadas > Avançado > Variáveis de ambiente.
   5. Em variáveis do sistema, de um duplo clique em PATH, e cole o endereço da pasta webdrivers.

## Execução da Automação:
    1. Abra novamente o terminal e navegue até o diretório ..\desafio\desafio-test-scenario\testsuite
    2. Para rodar os testes execute o comando: robot -d result .\azul.robot
    3. Se preferir você pode rodar por cenário usando as tags, exemplo: robot -d result -i scenario1 -i scenario2 -i scenario3 .\azul.robot
       Use quantas tags achar necessário.
    4. Ao final da execução, você verá o endereço da log no seu terminal, e poderá ver o resultado abrindo no browser copiando e colando a mesma.
===================================

# Escolha do framework

A escolha do Robot Framework foi, primeiramente pela familiaridade de automação com essa ferramenta. Além disso, pela gama de bibliotecas que ela possui possibilitando automatizar fluxos em Web, mobile, SAP, banco de dados (SQL/ORACLE), servidores Linux/AIX, além de muitas outras possibilidades. É um framework que tem uma excelente documentação, de facil acesso na web, e entendimento. Também tem uma exibição de logs bem intuitiva, o que possibilita rapidamente vericar em que determinado momento quebrou o teste.