*** Settings ***
Documentation    Ações de interação com a página/aba 'Enter Vehicle Data'.
Resource         ../locators/enter_vehicle_data_locators.resource
Resource         base_page.resource

*** Keywords ***
Selecionar Fabricante
    [Documentation]    Seleciona a marca/fabricante do veículo (ex: Ford, Audi, BMW, etc.).
    [Arguments]    ${make}
    Wait For Elements State    ${VEHICLE_MAKE_SELECT}    visible    timeout=${TIMEOUT_DEFAULT}
    Select Options By          ${VEHICLE_MAKE_SELECT}    value      ${make}

Selecionar Modelo
    [Documentation]    Seleciona o modelo do veículo (ex: Scooter, Moped, Motorcycle, etc.).
    [Arguments]    ${model}
    Wait For Elements State    ${VEHICLE_MODEL_SELECT}    visible    timeout=${TIMEOUT_DEFAULT}
    Select Options By          ${VEHICLE_MODEL_SELECT}    value      ${model}

Preencher Capacidade Cilindrada
    [Documentation]    Preenche a capacidade do motor em cilindradas [ccm] (ex: 1234).
    [Arguments]    ${ccm}
    Preencher Campo    ${VEHICLE_CYLINDER_CAPACITY_INPUT}    ${ccm}

Preencher Desempenho Motor
    [Documentation]    Preenche o desempenho do motor em kW (ex: 123).
    [Arguments]    ${kw}
    Preencher Campo    ${VEHICLE_ENGINE_PERFORMANCE_INPUT}    ${kw}

Preencher Data Fabricacao
    [Documentation]    Preenche a data de fabricação do veículo no formato MM/DD/YYYY (ex: 10/08/1986).
    [Arguments]    ${data}
    Preencher Campo    ${VEHICLE_DATE_OF_MANUFACTURE_INPUT}    ${data}

Selecionar Numero De Assentos
    [Documentation]    Seleciona a quantidade de assentos (ex: 2).
    [Arguments]    ${assentos}
    Wait For Elements State    ${VEHICLE_NUMBER_OF_SEATS_SELECT}    visible    timeout=${TIMEOUT_DEFAULT}
    Select Options By          ${VEHICLE_NUMBER_OF_SEATS_SELECT}    value      ${assentos}

Selecionar Direcao Lado Direito
    [Documentation]    Seleciona o posicionamento do volante (Yes ou No).
    [Arguments]    ${lado_direito}
    IF    '${lado_direito.upper()}' == 'YES'
        Clicar No Elemento    ${VEHICLE_RIGHT_HAND_DRIVE_YES_RADIO}
    ELSE
        Clicar No Elemento    ${VEHICLE_RIGHT_HAND_DRIVE_NO_RADIO}
    END

Selecionar Numero De Assentos Motocicleta
    [Documentation]    Seleciona a quantidade de assentos da categoria motocicleta (ex: 1).
    [Arguments]    ${assentos}
    Wait For Elements State    ${VEHICLE_NUMBER_OF_SEATS_MOTORCYCLE_SELECT}    visible    timeout=${TIMEOUT_DEFAULT}
    Select Options By          ${VEHICLE_NUMBER_OF_SEATS_MOTORCYCLE_SELECT}    value      ${assentos}

Selecionar Tipo De Combustivel
    [Documentation]    Seleciona o tipo de combustível (Petrol, Diesel, Electric Power, Gas, Other).
    [Arguments]    ${combustivel}
    Wait For Elements State    ${VEHICLE_FUEL_TYPE_SELECT}    visible    timeout=${TIMEOUT_DEFAULT}
    Select Options By          ${VEHICLE_FUEL_TYPE_SELECT}    value      ${combustivel}

Preencher Carga Util
    [Documentation]    Preenche a carga útil em kg [Payload] (ex: 12).
    [Arguments]    ${carga}
    Preencher Campo    ${VEHICLE_PAYLOAD_INPUT}    ${carga}

Preencher Peso Total
    [Documentation]    Preenche o peso total do veículo em kg [Total Weight] (ex: 1234).
    [Arguments]    ${peso}
    Preencher Campo    ${VEHICLE_TOTAL_WEIGHT_INPUT}    ${peso}

Preencher Preco De Tabela
    [Documentation]    Preenche o valor de tabela do veículo em dólares ($) (ex: 12398).
    [Arguments]    ${preco}
    Preencher Campo    ${VEHICLE_LIST_PRICE_INPUT}    ${preco}

Preencher Placa Do Veiculo
    [Documentation]    Preenche a identificação da placa do veículo (ex: 12345).
    [Arguments]    ${placa}
    Preencher Campo    ${VEHICLE_LICENSE_PLATE_INPUT}    ${placa}

Preencher Quilometragem Anual
    [Documentation]    Preenche a estimativa de quilometragem anual em milhas (ex: 988).
    [Arguments]    ${milhas}
    Preencher Campo    ${VEHICLE_ANNUAL_MILEAGE_INPUT}    ${milhas}

Clicar No Botao Proximo Em Dados Do Veiculo
    Clicar No Elemento    ${VEHICLE_NEXT_BUTTON}