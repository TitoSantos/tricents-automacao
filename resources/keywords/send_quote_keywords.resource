*** Settings ***
Documentation    Keywords de negócio para a aba 'Send Quote'.
Resource         ../pages/send_quote_page.resource
Resource         ../data/massa_dados.resource

*** Keywords ***
E preencho o formulario na aba Send Quote e pressiono Send
    [Arguments]    ${dados}=${DADOS_ENVIO_COTACAO}
    Preencher dados de envio da cotacao    ${dados}
    Submeter cotacao

Preencher dados de envio da cotacao
    [Arguments]    ${dados}=${DADOS_ENVIO_COTACAO}
    Preencher Email                 ${dados.email}
    Preencher Telefone              ${dados.phone}
    Preencher Nome De Usuario       ${dados.username}
    Preencher Senha                 ${dados.password}
    Preencher Confirmacao De Senha  ${dados.confirm_password}
    Preencher Comentarios           ${dados.comments}

Submeter cotacao
    Clicar No Botao Enviar Cotacao
