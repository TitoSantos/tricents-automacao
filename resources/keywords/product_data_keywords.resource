*** Settings ***
Documentation    Keywords de negócio para preenchimento dos dados do produto/seguro na aba 'Enter Product Data'.
Library          DateTime
Library          String
Resource         ../pages/enter_product_data_page.resource
Resource         ../data/massa_dados.resource

*** Keywords ***
E preencho o formulario na aba Enter Product Data e pressiono Next
    [Arguments]    ${dados}=${DADOS_PRODUTO}
    Preencher dados do produto    ${dados}
    Avancar para aba de selecao de preco

Preencher dados do produto
    [Documentation]    Preenche individualmente os campos da aba de dados do produto.
    [Arguments]    ${dados}=${DADOS_PRODUTO}
    
    ${data_futura}=    Get Current Date    result_format=%m/%d/%Y    increment=60 days
    Preencher Data De Inicio            ${data_futura}
    Selecionar Soma Segurada            ${dados.insurance_sum}
    Selecionar Classificacao De Merito  ${dados.merit_rating}
    Selecionar Seguro De Danos          ${dados.damage_insurance}
    
    @{opcionais}=    Split String    ${dados.optional_products}    separator=,
    FOR    ${opcional}    IN    @{opcionais}
        ${opcional_limpo}=    Strip String    ${opcional}
        Selecionar Produto Opcional    ${opcional_limpo}
    END

    Selecionar Carro Reserva            ${dados.courtesy_car}

Avancar para aba de selecao de preco
    Clicar No Botao Proximo Em Dados Do Produto