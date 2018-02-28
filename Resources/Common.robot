*** Settings ***
Library  Selenium2Library
Library  AppiumLibrary

*** Variables ***
${BROWSER}  Chrome
${APPIUMSERVER}  http://0.0.0.0:4723/wd/hub
${PLATFORMNAME}  Android
${PLATFORMVERSION}  8.1
${DEVICENAME}  emulator-554

*** Keywords ***
Setup Process
    Selenium2Library.Open Browser  about:blank  ${BROWSER}
    Selenium2Library.Maximize Browser Window

Teardowm Process
    Selenium2Library.Close all browsers

Mobile setup process
    [Documentation]  just demo
    AppiumLibrary.Open Application  ${APPIUMSERVER}  platformName=${PLATFORMNAME}  platformVersion=${PLATFORMVERSION}  deviceName=${DEVICENAME}  browserName=Chrome

Mobile teardown process
   AppiumLibrary.Close all applications