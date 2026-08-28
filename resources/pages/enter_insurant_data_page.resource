*** Settings ***
Documentation    Ações atômicas de interação com a página/aba 'Enter Insurant Data'.
Resource         ../locators/enter_insurant_data_locators.resource
Resource         base_page.resource

*** Keywords ***
Preencher Primeiro Nome
    [Arguments]    ${primeiro_nome}
    Preencher Campo    ${INSURANT_FIRST_NAME_INPUT}    ${primeiro_nome}

Preencher Sobrenome
    [Arguments]    ${sobrenome}
    Preencher Campo    ${INSURANT_LAST_NAME_INPUT}    ${sobrenome}

Preencher Data De Nascimento
    [Arguments]    ${data_nascimento}
    Preencher Campo    ${INSURANT_BIRTH_DATE_INPUT}    ${data_nascimento}

Selecionar Genero
    [Documentation]    Seleciona o gênero do segurado (Male ou Female).
    [Arguments]    ${genero}
    IF    '${genero.upper()}' == 'MALE'
        Clicar No Elemento    ${INSURANT_GENDER_MALE_RADIO}
    ELSE
        Clicar No Elemento    ${INSURANT_GENDER_FEMALE_RADIO}
    END

Preencher Endereco
    [Arguments]    ${endereco}
    Preencher Campo    ${INSURANT_STREET_ADDRESS_INPUT}    ${endereco}

Selecionar Pais
    [Arguments]    ${pais}
    Wait For Elements State    ${INSURANT_COUNTRY_SELECT}    visible    timeout=${TIMEOUT_DEFAULT}
    Select Options By          ${INSURANT_COUNTRY_SELECT}    value      ${pais}

Preencher CEP
    [Arguments]    ${cep}
    Preencher Campo    ${INSURANT_ZIP_CODE_INPUT}    ${cep}

Preencher Cidade
    [Arguments]    ${cidade}
    Preencher Campo    ${INSURANT_CITY_INPUT}    ${cidade}

Selecionar Ocupacao
    [Arguments]    ${ocupacao}
    Wait For Elements State    ${INSURANT_OCCUPATION_SELECT}    visible    timeout=${TIMEOUT_DEFAULT}
    Select Options By          ${INSURANT_OCCUPATION_SELECT}    value      ${ocupacao}

Selecionar Hobbie
    [Documentation]    Marca a opção de hobby desejada.
    [Arguments]    ${hobbie}
    IF    '${hobbie.lower()}' == 'speeding'
        Clicar No Elemento    ${INSURANT_HOBBY_SPEEDING_CHECKBOX}
    ELSE IF    '${hobbie.lower()}' in ['bungeejumping', 'bungee']
        Clicar No Elemento    ${INSURANT_HOBBY_BUNGEE_CHECKBOX}
    ELSE IF    '${hobbie.lower()}' in ['cliffdiving', 'cliff']
        Clicar No Elemento    ${INSURANT_HOBBY_CLIFF_CHECKBOX}
    ELSE IF    '${hobbie.lower()}' in ['skydiving', 'sky']
        Clicar No Elemento    ${INSURANT_HOBBY_SKYDIVING_CHECKBOX}
    ELSE
        Clicar No Elemento    ${INSURANT_HOBBY_OTHER_CHECKBOX}
    END

Preencher Website
    [Arguments]    ${website}
    Preencher Campo    ${INSURANT_WEBSITE_INPUT}    ${website}

Clicar No Botao Proximo Em Dados Do Segurado
    Clicar No Elemento    ${INSURANT_NEXT_BUTTON}

Anexar Foto Do Segurado
    [Documentation]    Realiza o upload de imagem.
    [Arguments]    ${caminho_imagem}
    IF    '${caminho_imagem}' != '${EMPTY}'
        Upload File By Selector    ${INSURANT_PICTURE_INPUT}    ${caminho_imagem}
    END
