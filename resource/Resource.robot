*** Settings ***
Library  SeleniumLibrary

*** Variable ***
${BROWSER}  ff
${URL}  http://automationpractice.com/index.php

*** Keywords ***

#### Setup e Teardown
Abrir navegador
    Open Browser    about:blank   ${BROWSER}

Fechar navegador
    Close Browser

#### Passo a Passo
Acessar a página home do site
    Go to   ${URL}
    Title Should Be     My Store

Digitar o nome do produto "${PRODUTO}" no campo pesquisa
    Input Text  name=search_query     ${PRODUTO}

Clicar no botão pesquisar
    Click Element   name=submit_search  

Conferir se o produto ${PRODUTO} foi listado no site
    Wait Until Element is Visible   css=#center_column > h1
    Title Should Be                 Search - My Store
    Page Should Contain Image       xpath=//*[@id="center_column"]//*[@src="http://automationpractice.com/img/p/7/7-home_default.jpg"]
    Page Should Contain Link        xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),${PRODUTO})]