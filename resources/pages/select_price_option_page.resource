*** Settings ***
Documentation    Ações de interação com a página/aba 'Select Price Option'.
Resource         ../locators/select_price_option_locators.resource
Resource         ../locators/common_locators.resource
Resource         base_page.resource

*** Keywords ***
Aguardar Tabela De Precos Disponivel
    [Documentation]    Aguarda a tabela de preços carregar e ficar visível após os cálculos do formulário.
    Wait For Elements State    ${PRICE_TABLE}    visible    timeout=20s

Selecionar Plano De Preco
    [Documentation]    Seleciona uma das opções de planos disponíveis: Silver, Gold, Platinum ou Ultimate.
    [Arguments]    ${plano}=Silver
    Aguardar Tabela De Precos Disponivel
    IF    '${plano.upper()}' == 'SILVER'
        Clicar No Elemento    ${PRICE_OPTION_SILVER_RADIO}
    ELSE IF    '${plano.upper()}' == 'GOLD'
        Clicar No Elemento    ${PRICE_OPTION_GOLD_RADIO}
    ELSE IF    '${plano.upper()}' == 'PLATINUM'
        Clicar No Elemento    ${PRICE_OPTION_PLATINUM_RADIO}
    ELSE IF    '${plano.upper()}' == 'ULTIMATE'
        Clicar No Elemento    ${PRICE_OPTION_ULTIMATE_RADIO}
    ELSE
        Fail    Plano de preco '${plano}' nao suportado. Opcoes validas: Silver, Gold, Platinum, Ultimate.
    END

Obter Valor Do Plano
    [Documentation]    Retorna o valor anual calculado para o plano informado.
    [Arguments]    ${plano}=Silver
    IF    '${plano.upper()}' == 'SILVER'
        ${valor}    Get Text    ${PRICE_SILVER_VALUE_LABEL}
    ELSE IF    '${plano.upper()}' == 'GOLD'
        ${valor}    Get Text    ${PRICE_GOLD_VALUE_LABEL}
    ELSE IF    '${plano.upper()}' == 'PLATINUM'
        ${valor}    Get Text    ${PRICE_PLATINUM_VALUE_LABEL}
    ELSE IF    '${plano.upper()}' == 'ULTIMATE'
        ${valor}    Get Text    ${PRICE_ULTIMATE_VALUE_LABEL}
    END
    RETURN    ${valor}

Clicar No Botao Proximo Em Opcoes De Preco
    Clicar No Elemento    ${PRICE_NEXT_BUTTON}
