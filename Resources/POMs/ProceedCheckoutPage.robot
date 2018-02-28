*** Settings ***
Library  Selenium2Library
Library  AppiumLibrary


*** Variables ***
${CONTINUESHOPPING}  css=div.button-container > span.continue.btn.btn-default.button.exclusive-medium
${CHECKOUT}  css=a[title='Proceed to checkout'].btn.btn-default

*** Keywords ***

Continue to product
    Selenium2Library.Wait Until Element Is Visible  ${CONTINUESHOPPING}
    Selenium2Library.Click Element  ${CONTINUESHOPPING}

Proceed checkout
    Selenium2Library.Wait Until Element Is Visible  ${CHECKOUT}
    Selenium2Library.Click Element  ${CHECKOUT}

Mobile_Proceed checkout
    AppiumLibrary.wait until element is visible  ${CHECKOUT}
    AppiumLibrary.click element  ${CHECKOUT}

Mobile_Continue shopping
    AppiumLibrary.wait until element is visible  ${CONTINUESHOPPING}
    AppiumLibrary.click element  ${CONTINUESHOPPING}