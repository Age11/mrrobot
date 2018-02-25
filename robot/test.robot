*** Settings ***
Documentation  http://automationpractice.com/index.php flow automation

Resource  ../Resources/MyStoreApp.robot
Resource  ../Resources/Common.robot

Test Setup    Common.Setup Process
Test Teardown  Common.Teardowm Process

*** Test Cases ***
Add a product to cart and continue
    Open landing page
    Select a product
    Add product to cart
    Continue shopping
    Product displayed in cart

Add a product to cart and checkout
    Open landing page
    Select a product
    Add product to cart
    Proceed to checkout
    Product displayed in cart summary

Add a product from quickview and continue
    [tags]  Current
    Open landing page
    Select quickview
    Add product to cart in quickview
    Continue shopping in quickview
    Product displayed in cart

