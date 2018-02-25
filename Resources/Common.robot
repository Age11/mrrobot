*** Settings ***
Library  Selenium2Library

*** Variables ***
${BROWSER}  Chrome

*** Keywords ***
Setup Process
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

Teardowm Process
    Close all browsers

