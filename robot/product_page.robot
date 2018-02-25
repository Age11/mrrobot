*** Settings ***
Documentation  http://automationpractice.com/index.php flow automation

Resource  ../Resources/MyStoreApp.robot
Resource  ../Resources/Common.robot

Test Setup    Common.Setup Process
Test Teardown  Common.Teardowm Process

*** Test Cases ***
Increase product quantity
    Open product page
    Increase quantity
    Add product to cart
    Three Products added to cart

Change product color
    Open Product page
    Select blue color
    Add product to cart
    Proceed checkout
    Blue product added to cart

Change sizze
    Open product page
    Select size for product M
    Add product to cart
    Proceed checkout
    M product added to cart

Add to wishlist
    Open product page
    Favorite product
    Login prompt displayed
