*** Settings ***
Library  Selenium2Library

*** Variables ***
${CONTINUESHOPPING}  css=div.button-container > span.continue.btn.btn-default.button.exclusive-medium
${CHECKOUT}  css=a[title='Proceed to checkout'].btn.btn-default

*** Keywords ***

Continue to product
    Wait Until Element Is Visible  ${CONTINUESHOPPING}
    Click Element  ${CONTINUESHOPPING}

Proceed checkout
    Wait Until Element Is Visible  ${CHECKOUT}
    Click Element  ${CHECKOUT}
