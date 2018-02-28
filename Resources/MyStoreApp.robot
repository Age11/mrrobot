*** Settings ***
Resource  ../Resources/POMs/LandingPage.robot
Resource  ../Resources/POMs/ProductPage.robot
Resource  ../Resources/POMs/ProceedCheckoutPage.robot
Resource  ../Resources/POMs/CartSummary.robot
Resource  ../Resources/POMs/ProductQuickviewPage.robot

*** Variables ***

*** Keywords ***
Open landing page
    LandingPage.Open

Select a product
    LandingPage.Click first product

Add product to cart
    ProductPage.Add To Cart

Continue shopping
    ProceedCheckoutPage.Continue to product

Product displayed in cart
    ProductPage.Products in cart  1

Proceed to checkout
    ProceedCheckoutPage.Proceed checkout

Product displayed in cart summary
    CartSummary.Check first element

Select quickview
    LandingPage.Open Quickview

Add product to cart in quickview
    ProductQuickviewPage.Add to cart

Continue shopping in quickview
    ProductQuickviewPage.Continue to product

Increase quantity
    ProductPage.Increase by  3

Three Products added to cart
    ProceedCheckoutPage.Proceed Checkout
    CartSummary.Number of products is  3

Select blue color
    ProductPage.Change color to  Blue

Blue product added to cart
    CartSummary.Product color is  Blue

Select size for product M
    ProductPage.Change size to  M

M product added to cart
    CartSummary.Product size is  M

Favorite product
    ProductPage.Click favorite icon

Login prompt displayed
    ProductPage.Login prompt visible


Mobile_Open product page
    ProductPage.Mobile_Open Page

Mobile_Add product to cart
    ProductPage.Mobile_Add to cart

Mobile_One Product added to cart
    ProductPage.Mobile_Products in cart  1

Mobile_Proceed to the cart
    ProceedCheckoutPage.Mobile_Proceed checkout

Mobile_Dismiss via Continue Shopping
    ProceedCheckoutPage.Mobile_Continue Shopping

Mobile_Product added to cart
    CartSummary.Mobile_products_in-cart  1
