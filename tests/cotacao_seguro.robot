*** Settings ***
Documentation       Suíte de testes automatizados para o portal de seguros Tricentis.
...                 Validação de todo o fluxo de contratação de seguro de automóvel

Resource            ../resources/keywords/common_keywords.resource
Resource            ../resources/keywords/vehicle_data_keywords.resource
Resource            ../resources/keywords/insurant_data_keywords.resource
Resource            ../resources/keywords/product_data_keywords.resource
Resource            ../resources/keywords/price_option_keywords.resource
Resource            ../resources/keywords/send_quote_keywords.resource

Test Teardown       Encerrar sessao de testes

*** Test Cases ***
Cenário 01: Realizar solicitacao de cotacao de seguro de automovel com sucesso
    [Documentation]    Valida o preenchimento de todas as 5 abas do formulário de seguro e
    ...                a exibição da mensagem de sucesso 'Sending e-mail success!' na tela.
    [Tags]             cotacao_sucesso

    Dado que acesso o portal de seguros Tricentis
    Quando preencho o formulario na aba Enter Vehicle Data e pressiono Next
    E preencho o formulario na aba Enter Insurant Data e pressiono Next
    E preencho o formulario na aba Enter Product Data e pressiono Next
    E preencho o formulario na aba Select Price Option e pressiono Next
    E preencho o formulario na aba Send Quote e pressiono Send
    Entao a cotacao e enviada com sucesso exibindo a mensagem "Sending e-mail success!"
