*** Settings ***
Documentation    Ações atômicas de interação com a página/aba 'Enter Product Data'.
Resource         ../locators/enter_product_data_locators.resource
Resource         base_page.resource

*** Keywords ***
Preencher Data De Inicio
    [Arguments]    ${data_inicio}
    Preencher Campo    ${PRODUCT_START_DATE_INPUT}    ${data_inicio}

Selecionar Soma Segurada
    [Arguments]    ${soma_segurada}
    ${soma_limpa}=    Evaluate    str('${soma_segurada}').replace('.', '').replace(',00', '').strip()
    Wait For Elements State    ${PRODUCT_INSURANCE_SUM_SELECT}    visible    timeout=${TIMEOUT_DEFAULT}
    Select Options By          ${PRODUCT_INSURANCE_SUM_SELECT}    value      ${soma_limpa}

Selecionar Classificacao De Merito
    [Arguments]    ${merit_rating}
    Wait For Elements State    ${PRODUCT_MERIT_RATING_SELECT}    visible    timeout=${TIMEOUT_DEFAULT}
    Select Options By          ${PRODUCT_MERIT_RATING_SELECT}    value      ${merit_rating}

Selecionar Seguro De Danos
    [Arguments]    ${seguro_danos}
    Wait For Elements State    ${PRODUCT_DAMAGE_INSURANCE_SELECT}    visible    timeout=${TIMEOUT_DEFAULT}
    Select Options By          ${PRODUCT_DAMAGE_INSURANCE_SELECT}    value      ${seguro_danos}

Selecionar Produto Opcional
    [Arguments]    ${produto_opcional}
    IF    '${produto_opcional.lower()}' in ['europrotection', 'euro']
        Clicar No Elemento    ${PRODUCT_OPTIONAL_EURO_PROTECTION_CHECKBOX}
    ELSE IF    '${produto_opcional.lower()}' in ['legaldefenseinsurance', 'legaldefense', 'legal']
        Clicar No Elemento    ${PRODUCT_OPTIONAL_LEGAL_DEFENSE_CHECKBOX}
    END

Selecionar Carro Reserva
    [Arguments]    ${carro_reserva}
    ${carro_reserva_limpo}=    Evaluate    str('${carro_reserva}').strip()
    Wait For Elements State    ${PRODUCT_COURTESY_CAR_SELECT}    visible    timeout=${TIMEOUT_DEFAULT}
    Select Options By          ${PRODUCT_COURTESY_CAR_SELECT}    value      ${carro_reserva_limpo}

Clicar No Botao Proximo Em Dados Do Produto
    Clicar No Elemento    ${PRODUCT_NEXT_BUTTON}