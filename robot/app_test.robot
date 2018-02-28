*** Settings ***
Library         AppiumLibrary  run_on_failure=Log Source
Resource  ../Resources/Common.robot
Test Setup  Common.Mobile setup process
Suite Teardown  Common.Mobile teardown process

*** Variables ***
${REMOTE_URL}  http://localhost:4723/wd/hub
${LOGO}  css=.logo
${PRODUCT}  css=div.right-block h5:nth-child(1) > a[title='Faded Short Sleeve T-shirts'].product-name
${QUICKVIEWBUTTON}  css=a.product_img_link > img[title='Faded Short Sleeve T-shirts']

*** Test Cases ***
Test1
    TestStart

*** Keywords ***
TestStart
    AppiumLibrary.Go to url  http://automationpractice.com/index.php
    AppiumLibrary.wait until element is visible  ${LOGO}
    AppiumLibrary.click element  ${PRODUCT}



    #/home/age11/Android/Sdk/tools/emulator -avd Nexus_5X_API_27 -use-system-libs
