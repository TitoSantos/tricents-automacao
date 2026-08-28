*** Settings ***
Documentation    Keywords para asserções comuns.
Resource         ../pages/base_page.resource
Resource         ../data/massa_dados.resource

*** Keywords ***
Dado que acesso o portal de seguros Tricentis
    [Arguments]    ${url}=${URL_BASE}    ${headless}=${HEADLESS}
    Iniciar Navegador E Acessar Aplicacao    url=${url}    headless=${headless}

Entao a cotacao e enviada com sucesso exibindo a mensagem "${mensagem_esperada}"
    Validar Mensagem De Sucesso SweetAlert    mensagem_esperada=${mensagem_esperada}

Encerrar sessao de testes
    Encerrar Sessao Do Navegador
