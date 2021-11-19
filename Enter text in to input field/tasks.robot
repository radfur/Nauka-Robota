*** Settings ***
Documentation   Prosty robot wpisujący jednego stringa w wyszukiwarkę

Library    RPA.Browser.Selenium


Suite Teardown    Close All Browsers
*** Variables ***

${URL}=     http://automationpractice.com/index.php

*** Keywords ***
Open The Internet Browser
    
    Open Chrome Browser    ${URL}
    Set Selenium Implicit Wait  10    
    Input Text When Element Is Visible    search_query_top    Działa

*** Test Cases ***
Login test
    Open The Internet Browser
    Textfield Should Contain    search_query_top    Działa
    

