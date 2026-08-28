*** Settings ***
Documentation    Keywords de negócio para a aba 'Select Price Option'.
Resource         ../pages/select_price_option_page.resource
Resource         ../data/massa_dados.resource

*** Keywords ***
E preencho o formulario na aba Select Price Option e pressiono Next
    [Arguments]    ${plano}=${PLANO_PRECO_PADRAO}
    Selecionar plano e avancar    ${plano}

Selecionar plano e avancar
    [Arguments]    ${plano}=${PLANO_PRECO_PADRAO}
    Selecionar Plano De Preco    ${plano}
    Clicar No Botao Proximo Em Opcoes De Preco
