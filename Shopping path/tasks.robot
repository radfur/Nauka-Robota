*** Settings ***
Documentation   Test checking if it is possible to go through shopping happy path.

Library    RPA.Browser.Selenium

Test Setup    Open Chrome Browser    https://www.saucedemo.com/
Test Teardown    Close All Browsers

*** Keywords ***
Log into website using valid credentials
    Input Password    password    secret_sauce
    Input Text When Element Is Visible    user-name    standard_user
    Click Button When Visible    login-button

*** Keywords ***
Add valid data
   Input Text    first-name    Stefan
   Input Text    last-name    Stefanowicz
   Input Text    postal-code    12-345

*** Test Cases ***
Shopping happy path
    Log into website using valid credentials
    Click Button When Visible    add-to-cart-sauce-labs-onesie
    Click Element    css:div#shopping_cart_container
    Click Button    checkout
    Add valid data
    Click Button    continue
    Click Button    finish
    Sleep    10    #tylko żeby zobaczyć że przeszło 