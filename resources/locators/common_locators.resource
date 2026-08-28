*** Settings ***
Documentation    Mapeamento de locators comuns compartilhados

*** Variables ***
${NAV_AUTOMOBILE_LINK}              css=.main-navigation #nav_automobile
${NAV_TRUCK_LINK}                   css=.main-navigation #nav_truck
${NAV_MOTORCYCLE_LINK}              css=.main-navigation #nav_motorcycle
${NAV_CAMPER_LINK}                  css=.main-navigation #nav_camper
${NAV_HOME_LINK}                    id=nav_home
${INSURANCE_FORM}                   id=insurance-form
${PRICE_SECTION_LOADER}             id=xLoaderPrice
${QUOTE_SECTION_LOADER}             id=xLoaderQuote
${SWEET_ALERT_CONTAINER}            css=div.sweet-alert
${SWEET_ALERT_TITLE}                css=div.sweet-alert h2
${SWEET_ALERT_TEXT}                 css=div.sweet-alert p
${SWEET_ALERT_CONFIRM_BUTTON}       css=div.sweet-alert button.confirm
${SWEET_ALERT_SUCCESS_ICON}         css=div.sweet-alert .sa-icon.sa-success