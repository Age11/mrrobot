*** Settings ***
Library  Selenium2Library
Library  AppiumLibrary

*** Variables ***
${FIRSTCARTITEM}  css=tr[id*='product'].cart_item.first_item
${PRODUCTCOUNT}  css=input.cart_quantity_input.form-control.grey
${PRODUCTSIZE}   css=td.cart_description > small > a

*** Keywords ***
Check first element
    Selenium2Library.Wait Until Element Is Visible  ${FIRSTCARTITEM}

Number of products is
    [Arguments]  ${number}
    Selenium2Library.Wait Until Element Is Visible  ${FIRSTCARTITEM}
    ${val}=  Selenium2Library.Get Element Attribute  ${PRODUCTCOUNT}  attribute=Value
    Should be equal as numbers  ${number}   ${val}

Product size is
    [Arguments]  ${size}
    Selenium2Library.Wait Until Element Is Visible  ${FIRSTCARTITEM}
    ${ps}=  Selenium2Library.Get Text  ${PRODUCTSIZE}
    Should contain  ${ps}  ${size}

Product color is
    [Arguments]  ${color}
    Selenium2Library.Wait Until Element Is Visible  ${FIRSTCARTITEM}
    ${cl}=  Selenium2Library.Get Text  ${PRODUCTSIZE}
    Should Contain  ${cl}  ${color}

CartSummary.Mobile_products_in-cart
    [Arguments]  ${number}
    AppiumLibrary.Wait Until Element Is Visible  ${FIRSTCARTITEM}
    ${val}=  AppiumLibrary.Get Element Attribute  ${PRODUCTCOUNT}  attribute=Value
    Should be equal as numbers  ${number}   ${val}

#Color : Orange, Size : M