*** Settings ***
Library  Selenium2Library
Library  Dialogs
Library  BuiltIn

*** Variables ***
${ADDTOCART}  css=#add_to_cart > button > span
${PRODUCTTITLEq}  Faded Short Sleeve T-shirts
${Frame}  css=iframe[id *='fancybox-frame']


*** Keywords ***
Add to cart
    Select Frame  ${Frame}
    Frame Should Contain  ${Frame}  ${PRODUCTTITLEq}
#TODO Remove this sleep
#Wait until element visible in iframe (iframe element ocator step -> extend selenium?)

    Sleep  3s
    Select Frame  ${Frame}
    Click Element  ${ADDTOCART}

    Unselect Frame

#TODO Remove this sleep
#Did not work with wait element visible
Continue to product
    Sleep  3s
    Wait Until Element Is Visible  ${CONTINUESHOPPING}
    Click Element  ${CONTINUESHOPPING}






