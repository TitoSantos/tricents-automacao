*** Settings ***
Documentation    Keywords de negócio para preenchimento dos dados do veículo na aba 'Enter Vehicle Data'.
Resource         ../pages/enter_vehicle_data_page.resource
Resource         ../data/massa_dados.resource

*** Keywords ***
Quando preencho o formulario na aba Enter Vehicle Data e pressiono Next
    [Arguments]    ${dados}=${DADOS_VEICULO}
    Preencher dados do veiculo    ${dados}
    Avancar para aba de dados do segurado

Preencher dados do veiculo
    [Arguments]    ${dados}=${DADOS_VEICULO}
    Selecionar Fabricante                        ${dados.make}
    Selecionar Modelo                            ${dados.model}
    Preencher Capacidade Cilindrada              ${dados.cylinder_capacity}
    Preencher Desempenho Motor                   ${dados.engine_performance}
    Preencher Data Fabricacao                    ${dados.date_of_manufacture}
    Selecionar Numero De Assentos                ${dados.number_of_seats}
    Selecionar Direcao Lado Direito              ${dados.right_hand_drive}
    Selecionar Numero De Assentos Motocicleta    ${dados.number_of_seats_motorcycle}
    Selecionar Tipo De Combustivel               ${dados.fuel_type}
    Preencher Carga Util                         ${dados.payload}
    Preencher Peso Total                         ${dados.total_weight}
    Preencher Preco De Tabela                    ${dados.list_price}
    Preencher Placa Do Veiculo                   ${dados.license_plate}
    Preencher Quilometragem Anual                ${dados.annual_mileage}

Avancar para aba de dados do segurado
    Clicar No Botao Proximo Em Dados Do Veiculo