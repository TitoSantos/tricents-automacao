*** Settings ***
Documentation    Mapeamento de locators da aba 'Enter Product Data'.

*** Variables ***

${PRODUCT_START_DATE_INPUT}                     id=startdate
${PRODUCT_INSURANCE_SUM_SELECT}                 id=insurancesum
${PRODUCT_MERIT_RATING_SELECT}                  id=meritrating
${PRODUCT_DAMAGE_INSURANCE_SELECT}              id=damageinsurance
${PRODUCT_COURTESY_CAR_SELECT}                  id=courtesycar
${PRODUCT_OPTIONAL_EURO_PROTECTION_CHECKBOX}    xpath=//input[@id='EuroProtection']/parent::label
${PRODUCT_OPTIONAL_LEGAL_DEFENSE_CHECKBOX}      xpath=//input[@id='LegalDefenseInsurance']/parent::label
${PRODUCT_PREV_BUTTON}                          id=preventerinsurancedata
${PRODUCT_NEXT_BUTTON}                          id=nextselectpriceoption
