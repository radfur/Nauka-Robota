*** Settings ***
Documentation   Using search input field to look for an item

Library    RPA.Browser.Selenium
Library    RPA.Browser.Playwright
Library    Screenshot

*** Variables ***
${URL}=  http://automationpractice.com/index.php

*** Keywords ***
Open Browser
    Open Chrome Browser    ${URL}

Search for an item
    Input Text When Element Is Visible    search_query_top    Faded Short Sleeve T-shirts
    Click Button When Visible    xpath://*[@id="searchbox"]/button

*** Tasks ***
Search    
    Open Browser
    Search for an item

*** Tasks ***
Validation
    Wait Until Page Contains Element    xpath://*[@id="center_column"]/ul/li/div/div[2]/h5/a
    Element Text Should Be    xpath://*[@id="center_column"]/ul/li/div/div[2]/h5/a    Faded Short Sleeve T-shirts
    