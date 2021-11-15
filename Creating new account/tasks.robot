*** Settings ***

Documentation    Login new account using randomly generated email 

Library    RPA.Browser.Selenium
Library    String
Library    Screenshot

*** Variables ***
${URL}=    http://automationpractice.com/index.php

*** Keywords ***
Open Browser
    Open Chrome Browser    ${URL}
Move to Sign In Page
    Click Link    xpath://*[@id="header"]/div[2]/div/div/nav/div[1]/a
    [Arguments]    ${number}
    Input Text When Element Is Visible    email_create    stefan+${number}@yopmail.com
    
*** Test Cases ***
Test
    Open Browser
    ${number}=    Generate Random String    2    1234567890
    Move to Sign In Page   ${number} 
    Take Screenshot