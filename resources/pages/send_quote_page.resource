*** Settings ***
Documentation    Ações de interação com a página/aba 'Send Quote'.
Resource         ../locators/send_quote_locators.resource
Resource         base_page.resource

*** Keywords ***
Preencher Email
    [Documentation]    Preenche o endereço de e-mail de destino da cotação.
    [Arguments]    ${email}
    Preencher Campo    ${SEND_QUOTE_EMAIL_INPUT}    ${email}

Preencher Telefone
    [Documentation]    Preenche o número de telefone de contato.
    [Arguments]    ${telefone}
    Preencher Campo    ${SEND_QUOTE_PHONE_INPUT}    ${telefone}

Preencher Nome De Usuario
    [Documentation]    Preenche o nome de usuário (username).
    [Arguments]    ${username}
    Preencher Campo    ${SEND_QUOTE_USERNAME_INPUT}    ${username}

Preencher Senha
    [Documentation]    Preenche a senha de acesso (deve atender aos critérios de complexidade).
    [Arguments]    ${senha}
    Preencher Campo    ${SEND_QUOTE_PASSWORD_INPUT}    ${senha}

Preencher Confirmacao De Senha
    [Arguments]    ${confirmacao_senha}
    Preencher Campo    ${SEND_QUOTE_CONFIRM_PASSWORD_INPUT}    ${confirmacao_senha}

Preencher Comentarios
    [Arguments]    ${comentarios}
    Preencher Campo    ${SEND_QUOTE_COMMENTS_TEXTAREA}    ${comentarios}

Clicar No Botao Enviar Cotacao
    Clicar No Elemento    ${SEND_QUOTE_SEND_BUTTON}
