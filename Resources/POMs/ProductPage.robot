*** Settings ***
Resource  ../LandingPage.robot
Library  Selenium2Library
Library  Dialogs

*** Variables ***
${ADDTOCART}  css=#add_to_cart > button > span
${CARTQUANTITY}  css=div[class='shopping_cart'] > a > span.ajax_cart_quantity:nth-child(2)
${PRODUCTTITLE}  css=div > h1[itemprop='name']
${QNT_PLUS}  css=p > a.btn.btn-default.button-plus.product_quantity_up
${SIZEDROPDOWN}  css=#group_1.attribute_select
${WISHLISTBUTTON}  css=#wishlist_button
${LOGINPROMPT}  css=p[class='fancybox-error']


*** Keywords ***
Add to cart
    Wait Until Page Contains Element  ${PRODUCTTITLE}
    Click Element  ${ADDTOCART}


Products in cart
    [Arguments]  ${number}
    Wait Until Element Is Visible  ${CARTQUANTITY}
    ${number}=  Get Text  ${CARTQUANTITY}

Increase by
    [Arguments]  ${number}
    Wait Until Element Is Visible  ${QNT_PLUS}
    :FOR  ${index}  in RANGE  1  ${number}
    \    Click Element  ${QNT_PLUS}

Open product page
    LandingPage.Open
    LandingPage.Click first product

Change size to
    [Arguments]  ${size}
    Select From List  ${SIZEDROPDOWN}  2


Change color to
    [Arguments]  ${color}
    Click Element  css=a[name='${color}']

Click favorite icon
    Click Element  ${WISHLISTBUTTON}

Login prompt visible
    Wait Until Element Is Visible  ${LOGINPROMPT}




