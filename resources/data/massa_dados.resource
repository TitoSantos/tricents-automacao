*** Settings ***
Documentation    Massa de dados padrão e configurações globais de ambiente para a suíte de testes.

*** Variables ***
${URL_BASE}                     https://sampleapp.tricentis.com/101/app.php
${BROWSER}                      chromium
${HEADLESS}                     ${False}
${TIMEOUT_DEFAULT}              15s

&{DADOS_VEICULO}
...    make=Ford
...    model=Scooter
...    cylinder_capacity=1234
...    engine_performance=123
...    date_of_manufacture=10/08/1986
...    number_of_seats=2
...    right_hand_drive=Yes
...    number_of_seats_motorcycle=1
...    fuel_type=Petrol
...    payload=12
...    total_weight=1234
...    list_price=12398
...    license_plate=12345
...    annual_mileage=988

&{DADOS_SEGURADO}
...    first_name=Tito
...    last_name=Santos
...    birth_date=08/15/1992
...    gender=Male
...    street_address=Av Paulista, 1000
...    country=Brazil
...    zip_code=12345
...    city=Sao Paulo
...    occupation=Employee
...    hobbies=Speeding,Skydiving
...    website=http://www.sample.com
...    picture=${CURDIR}/files/imagem.png

&{DADOS_PRODUTO}
...    start_date=12/01/2026
...    insurance_sum=7000000
...    merit_rating=Super Bonus
...    damage_insurance=Full Coverage
...    optional_products=EuroProtection,LegalDefenseInsurance
...    courtesy_car=Yes

${PLANO_PRECO_PADRAO}           Silver

&{DADOS_ENVIO_COTACAO}
...    email=tsantos@teste.com.br
...    phone=11987654321
...    username=titoautomation
...    password=AutoPass123!
...    confirm_password=AutoPass123!
...    comments=Cotacao gerada para o desafio tecnico de Robot Framework.

${MENSAGEM_SUCESSO_ENVIO}       Sending e-mail success!