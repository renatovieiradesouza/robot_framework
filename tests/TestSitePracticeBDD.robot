*** Settings ***
Library  SeleniumLibray

*** Variables ***
${URL}  http://automationpractice.com/index.php
${BROWSER}  chrome

*** Test Case ***
Cenário 01: Pesquisando produto existente
    Dado que estou na página do site
    Quando eu pesquisar pelo produto 'Blouse'
    Então o produto 'Blouse' deve ser listado na página de resultado de busca

Cenário 02: Pesquisar produto não existente
    Dado que estou na página do site
    Quando eu pesquisar pelo produto 'itemNaoExistente'
    Então a página deve exibir a mensagem 'No results were found for your search "itemNaoExistente" '

*** Keywords ***

