*** Settings ***
Documentation    Page Object base com ações genéricas, inicialização de navegador e asserções
Library          Browser    timeout=15s    enable_presenter_mode=False
Resource         ../locators/common_locators.resource
Resource         ../data/massa_dados.resource

*** Keywords ***
Iniciar Navegador E Acessar Aplicacao
    [Documentation]    Inicializa o navegador configurado (Chromium/Playwright), cria o contexto e acessa a URL base da aplicação.
    [Arguments]    ${url}=${URL_BASE}    ${headless}=${HEADLESS}
    New Browser    browser=${BROWSER}    headless=${headless}
    New Context    viewport={'width': 1366, 'height': 768}
    New Page       ${url}
    Wait For Elements State    ${INSURANCE_FORM}    visible    timeout=${TIMEOUT_DEFAULT}

Encerrar Sessao Do Navegador
    Take Screenshot    fullPage=True
    Close Browser

Preencher Campo
    [Arguments]    ${locator}    ${texto}
    Wait For Elements State    ${locator}    visible    timeout=${TIMEOUT_DEFAULT}
    Fill Text                  ${locator}    ${texto}

Selecionar Opcao Por Texto
    [Arguments]    ${locator}    ${texto_opcao}
    Wait For Elements State    ${locator}    visible    timeout=${TIMEOUT_DEFAULT}
    Select Options By          ${locator}    text       ${texto_opcao}

Selecionar Opcao Por Valor
    [Arguments]    ${locator}    ${valor_opcao}
    Wait For Elements State    ${locator}    visible    timeout=${TIMEOUT_DEFAULT}
    Select Options By          ${locator}    value      ${valor_opcao}

Clicar No Elemento
    [Arguments]    ${locator}
    Wait For Elements State    ${locator}    visible    timeout=${TIMEOUT_DEFAULT}
    Click                      ${locator}

Validar Mensagem De Sucesso SweetAlert
    [Arguments]    ${mensagem_esperada}=${MENSAGEM_SUCESSO_ENVIO}
    Wait For Elements State    ${SWEET_ALERT_CONTAINER}         visible    timeout=30s
    Wait For Elements State    ${SWEET_ALERT_TITLE}             visible    timeout=15s
    Get Text                   ${SWEET_ALERT_TITLE}             ==         ${mensagem_esperada}
    Take Screenshot            filename=evidencia_sucesso_cotacao
    Click                      ${SWEET_ALERT_CONFIRM_BUTTON}
    Wait For Elements State    ${SWEET_ALERT_CONTAINER}         hidden     timeout=10s