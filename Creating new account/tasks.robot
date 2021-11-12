*** Settings ***
Documentation   Creating new account via email

Library    Screenshot
Library    RPA.Browser.Selenium
Library    String

*** Variables ***

${random_number}=   Generate Random String  9  [NUMBERS]  #nie działa
${random_char}=    Generate Random String 5  [LETTERS]    #nie działa

*** Keywords ***
Open Browser
    Open Chrome Browser    http://automationpractice.com/index.php
    Wait Until Element Is Visible    xpath:/html/body/div/div[1]/header/div[2]/div/div
    Click Link    xpath:/html/body/div/div[1]/header/div[2]/div/div/nav/div[1]/a			
*** Keywords ***
Generate mail
    
    Input Text When Element Is Visible   email_create   ${random_number}${random_char}@yopmail.com    #nie działa
    


*** Tasks ***
Minimal task
    Open Browser
    Generate mail
    
*** Tasks ***
Validation
    
    Textfield Should Contain    email_create   ${random_number}${random_char}@yopmail.com
