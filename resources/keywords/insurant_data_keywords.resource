*** Settings ***
Documentation    Keywords de negócio para preenchimento dos dados do segurado na aba 'Enter Insurant Data'.
Resource         ../pages/enter_insurant_data_page.resource
Resource         ../data/massa_dados.resource
Library          String

*** Keywords ***
E preencho o formulario na aba Enter Insurant Data e pressiono Next
    [Arguments]    ${dados}=${DADOS_SEGURADO}
    Preencher dados do segurado    ${dados}
    Avancar para aba de dados do produto

Preencher dados do segurado
    [Arguments]    ${dados}=${DADOS_SEGURADO}
    Preencher Primeiro Nome          ${dados.first_name}
    Preencher Sobrenome              ${dados.last_name}
    Preencher Data De Nascimento     ${dados.birth_date}
    Selecionar Genero                ${dados.gender}
    Preencher Endereco               ${dados.street_address}
    Selecionar Pais                  ${dados.country}
    Preencher CEP                    ${dados.zip_code}
    Preencher Cidade                 ${dados.city}
    Selecionar Ocupacao              ${dados.occupation}
    
    #Usei esse FOR para processar multiplos hobbies
    @{hobbies}=    Split String    ${dados.hobbies}    separator=,
    FOR    ${hobbie}    IN    @{hobbies}
        ${hobbie_limpo}=    Strip String    ${hobbie}
        Selecionar Hobbie    ${hobbie_limpo}
    END

    Preencher Website                ${dados.website}
    Anexar Foto Do Segurado          ${dados.picture}       

Avancar para aba de dados do produto
    Clicar No Botao Proximo Em Dados Do Segurado
