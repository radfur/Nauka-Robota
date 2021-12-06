*** Settings ***

Documentation    Login new account using randomly generated email 

Library    RPA.Browser.Selenium
Library    String

Test Setup    Open Chrome Browser    http://automationpractice.com/index.php 
Test Teardown    Close All Browsers


*** Keywords ***

Move to Sign In Page
    Click Link    xpath://*[@id="header"]/div[2]/div/div/nav/div[1]/a
    [Arguments]    ${number}
    Input Text When Element Is Visible    email_create    stefan+${number}@yopmail.com
    
*** Test Cases ***
Test
    ${number}=    Generate Random String    2    1234567890
    Move to Sign In Page   ${number} 
    Sleep    5