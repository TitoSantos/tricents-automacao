*** Settings ***
Documentation    Mapeamento de locators da aba 'Select Price Option'.

*** Variables ***

${PRICE_TABLE}                              id=priceTable
${PRICE_OPTION_SILVER_RADIO}                xpath=//input[@id='selectsilver']/parent::label
${PRICE_OPTION_GOLD_RADIO}                  xpath=//input[@id='selectgold']/parent::label
${PRICE_OPTION_PLATINUM_RADIO}              xpath=//input[@id='selectplatinum']/parent::label
${PRICE_OPTION_ULTIMATE_RADIO}              xpath=//input[@id='selectultimate']/parent::label 
${PRICE_SILVER_VALUE_LABEL}                 id=selectsilver_price
${PRICE_GOLD_VALUE_LABEL}                   id=selectgold_price
${PRICE_PLATINUM_VALUE_LABEL}               id=selectplatinum_price
${PRICE_ULTIMATE_VALUE_LABEL}               id=selectultimate_price
${PRICE_PREV_BUTTON}                        id=preventerproductdata
${PRICE_NEXT_BUTTON}                        id=nextsendquote
