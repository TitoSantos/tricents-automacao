*** Settings ***
Documentation    Mapeamento de locators da aba 'Enter Vehicle Data' do formulário de seguro.

*** Variables ***

${VEHICLE_MAKE_SELECT}                          id=make
${VEHICLE_MODEL_SELECT}                         id=model
${VEHICLE_CYLINDER_CAPACITY_INPUT}              id=cylindercapacity
${VEHICLE_ENGINE_PERFORMANCE_INPUT}             id=engineperformance
${VEHICLE_DATE_OF_MANUFACTURE_INPUT}            id=dateofmanufacture
${VEHICLE_NUMBER_OF_SEATS_SELECT}               id=numberofseats
${VEHICLE_NUMBER_OF_SEATS_MOTORCYCLE_SELECT}    id=numberofseatsmotorcycle
${VEHICLE_FUEL_TYPE_SELECT}                     id=fuel
${VEHICLE_PAYLOAD_INPUT}                        id=payload
${VEHICLE_TOTAL_WEIGHT_INPUT}                   id=totalweight
${VEHICLE_LIST_PRICE_INPUT}                     id=listprice
${VEHICLE_LICENSE_PLATE_INPUT}                  id=licenseplatenumber
${VEHICLE_ANNUAL_MILEAGE_INPUT}                 id=annualmileage
${VEHICLE_RIGHT_HAND_DRIVE_YES_RADIO}           xpath=//input[@id='righthanddriveyes']/parent::label
${VEHICLE_RIGHT_HAND_DRIVE_NO_RADIO}            xpath=//input[@id='righthanddriveno']/parent::label
${VEHICLE_NEXT_BUTTON}                          id=nextenterinsurantdata
