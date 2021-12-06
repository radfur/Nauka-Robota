*** Settings ***
Documentation   Using search input field to look for an item

Library    RPA.Browser.Selenium

Test Setup    Open Chrome Browser    http://automationpractice.com/index.php
Test Teardown    Close All Browsers


*** Keywords ***
Search for valid item
    Input Text When Element Is Visible    search_query_top    Faded Short Sleeve T-shirts
    Click Button When Visible    xpath://*[@id="searchbox"]/button

*** Test Cases ***
Using searchbar input field, search for valid item     
    Search for valid item
    Wait Until Page Contains Element    xpath://*[@id="center_column"]/ul/li/div/div[2]/h5/a
    Element Text Should Be    xpath://*[@id="center_column"]/ul/li/div/div[2]/h5/a    Faded Short Sleeve T-shirts
    Sleep    10     #podgląd