*** Settings ***
Library  Selenium2Library

*** Variables ***
${URL}  http://automationpractice.com/index.php
${LOGO}  css=.logo
${PRODUCT}  css=div.right-block h5:nth-child(1) > a[title='Faded Short Sleeve T-shirts'].product-name
${QUICKVIEWBUTTON}  css=a.product_img_link > img[title='Faded Short Sleeve T-shirts']
${Frame}  css=iframe[id*='fancybox-frame']

*** Keywords ***
Open
    Go To  ${URL}
    Wait Until Element Is Visible  ${LOGO}


Click first product
    Click Element  ${PRODUCT}

Open Quickview
    Click Element  ${QUICKVIEWBUTTON}
