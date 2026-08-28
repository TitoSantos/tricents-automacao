*** Settings ***
Documentation    Mapeamento de locators da aba 'Enter Insurant Data'.

*** Variables ***

${INSURANT_FIRST_NAME_INPUT}                id=firstname
${INSURANT_LAST_NAME_INPUT}                 id=lastname
${INSURANT_BIRTH_DATE_INPUT}                id=birthdate
${INSURANT_STREET_ADDRESS_INPUT}            id=streetaddress
${INSURANT_COUNTRY_SELECT}                  id=country
${INSURANT_ZIP_CODE_INPUT}                  id=zipcode
${INSURANT_CITY_INPUT}                      id=city
${INSURANT_OCCUPATION_SELECT}               id=occupation
${INSURANT_WEBSITE_INPUT}                   id=website
${INSURANT_PICTURE_INPUT}                   id=picturecontainer
${INSURANT_GENDER_MALE_RADIO}               xpath=//input[@id='gendermale']/parent::label
${INSURANT_GENDER_FEMALE_RADIO}             xpath=//input[@id='genderfemale']/parent::label
${INSURANT_HOBBY_SPEEDING_CHECKBOX}         xpath=//input[@id='speeding']/parent::label
${INSURANT_HOBBY_BUNGEE_CHECKBOX}           xpath=//input[@id='bungeejumping']/parent::label
${INSURANT_HOBBY_CLIFF_CHECKBOX}            xpath=//input[@id='cliffdiving']/parent::label
${INSURANT_HOBBY_SKYDIVING_CHECKBOX}        xpath=//input[@id='skydiving']/parent::label
${INSURANT_HOBBY_OTHER_CHECKBOX}            xpath=//input[@id='other']/parent::label
${INSURANT_PREV_BUTTON}                     id=preventervehicledata
${INSURANT_NEXT_BUTTON}                     id=nextenterproductdata
