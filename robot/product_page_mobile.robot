*** Settings ***
Documentation  http://automationpractice.com/index.php flow automation

Resource  ../Resources/MyStoreApp.robot
Resource  ../Resources/Common.robot

Test Setup    Common.Mobile Setup Process
Test Teardown   Common.Mobile Teardown Process

*** Test Cases ***

Add a product to cart and continue
    Mobile_Open product page
    Mobile_Add product to cart
    Mobile_Dismiss via Continue Shopping
    Mobile_One Product added to cart

Add a product to cart and checkout
    Mobile_Open product page
    Mobile_Add product to cart
    Mobile_Proceed to the cart
    Mobile_Product added to cart


