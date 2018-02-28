*** Settings ***
Library  Selenium2Library
Library  AppiumLibrary

*** Variables ***
${URL}  http://automationpractice.com/index.php
${LOGO}  css=.logo
${PRODUCT}  css=div.right-block h5:nth-child(1) > a[title='Faded Short Sleeve T-shirts'].product-name
${QUICKVIEWBUTTON}  css=a.product_img_link > img[title='Faded Short Sleeve T-shirts']
${Frame}  css=iframe[id*='fancybox-frame']

*** Keywords ***
Open
    Selenium2Library.Go To  ${URL}
    Selenium2Library.Wait Until Element Is Visible  ${LOGO}


Click first product
    Selenium2Library.Click Element  ${PRODUCT}

Open Quickview
    Selenium2Library.Click Element  ${QUICKVIEWBUTTON}

Mobile_Open
    AppiumLibrary.Go to url  ${url}
    AppiumLibrary.wait until element is visible  ${LOGO}

Mobile_Click first product
    AppiumLibrary.wait until element is visible  ${PRODUCT}
    AppiumLibrary.click element   ${PRODUCT}

