*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site
    Digitar o nome do produto "Blouse" no campo pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site

# Caso de Teste 02: Pesquisar produto não existente
#     Acessar a página home do site
#     Conferir se a página home foi exibida
#     Digitar o nome do produto "itemNaoExistente" no campo pesquisa
#     Clicar no botão pesquisar
#     Conferir mensagem de erro "No results were found for your search "itemNaoExistente""

*** Keywords ***

