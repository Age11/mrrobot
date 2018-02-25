*** Settings ***
Library  Selenium2Library

*** Variables ***
${FIRSTCARTITEM}  css=tr[id*='product'].cart_item.first_item
${PRODUCTCOUNT}  css=input.cart_quantity_input.form-control.grey
${PRODUCTSIZE}   css=td.cart_description > small > a

*** Keywords ***
Check first element
    Wait Until Element Is Visible  ${FIRSTCARTITEM}

Number of products is
    [Arguments]  ${number}
    Wait Until Element Is Visible  ${FIRSTCARTITEM}
    Log    ${number}
    ${val}=  Get Element Attribute  ${PRODUCTCOUNT}  attribute=Value
    log    ${val}
    Should be equal as numbers  ${number}   ${val}

Product size is
    [Arguments]  ${size}
    Wait Until Element Is Visible  ${FIRSTCARTITEM}
    Log    ${size}
    ${ps}=  Get Text  ${PRODUCTSIZE}
    Log  ${ps}
    Should contain  ${ps}  ${size}

Product color is
    [Arguments]  ${color}
    Wait Until Element Is Visible  ${FIRSTCARTITEM}
    Log    ${color}
    ${cl}=  Get Text  ${PRODUCTSIZE}
    log  ${cl}
    Should Contain  ${cl}  ${color}


#Color : Orange, Size : M