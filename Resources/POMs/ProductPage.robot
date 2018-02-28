*** Settings ***

Resource  ../Resources/POMs/LandingPage.robot

Library  Selenium2Library
Library  Dialogs
Library  AppiumLibrary


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
    Selenium2Library.Wait Until Page Contains Element  ${PRODUCTTITLE}
    Selenium2Library.Click Element  ${ADDTOCART}


Products in cart
    [Arguments]  ${number}
    Selenium2Library.Wait Until Element Is Visible  ${CARTQUANTITY}
    ${number}=  Selenium2Library.Get Text  ${CARTQUANTITY}

Increase by
    [Arguments]  ${number}
    Selenium2Library.Wait Until Element Is Visible  ${QNT_PLUS}
    :FOR  ${index}  in RANGE  1  ${number}
    \    Selenium2Library.Click Element  ${QNT_PLUS}

Open product page
    LandingPage.Open
    LandingPage.Click first product

Change size to
    [Arguments]  ${size}
    Selenium2Library.Select From List  ${SIZEDROPDOWN}  2


Change color to
    [Arguments]  ${color}
    Selenium2Library.Click Element  css=a[name='${color}']

Click favorite icon
    Selenium2Library.Click Element  ${WISHLISTBUTTON}

Login prompt visible
    Selenium2Library.Wait Until Element Is Visible  ${LOGINPROMPT}

Mobile_Add to cart
    AppiumLibrary.wait until element is visible  ${ADDTOCART}
    AppiumLibrary.click element  ${ADDTOCART}

Mobile_Products in cart
    [Arguments]  ${number}
    AppiumLibrary.Wait Until Element Is Visible  ${CARTQUANTITY}
    ${number}=  AppiumLibrary.Get Text  ${CARTQUANTITY}

Mobile_Open Page
    LandingPage.Mobile_Open
    LandingPage.Mobile_Click first product


