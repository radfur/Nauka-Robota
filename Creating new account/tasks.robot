*** Settings ***
Documentation   Creating new account via email

Library    Screenshot
Library    RPA.Browser.Selenium
Library    String

*** Variables ***

${random_number}=  Generate Random String  9  [NUMBERS]
${random_char}=  Generate Random String 5  [LETTERS]

*** Keywords ***
Open Browser
    Open Chrome Browser    http://automationpractice.com/index.php
    Click Button When Visible     //*[@id="header"]/div[2]/div/div/nav/div[1]/a
			
*** Keywords ***
Generate mail
    Take Screenshot
    Input Text When Element Is Visible   email_create   ${random_number}${random_char}@yopmail.com
    Take Screenshot
*** Keywords ***
#Random Number
#   ${random}=  Generate Random String  9  [NUMBERS]

*** Tasks ***
Minimal task
    Open Browser
    Generate mail
    
