*** Settings ***
Documentation   Prosty robot wpisujący jednego stringa w wyszukiwarkę

Library    RPA.Browser.Selenium
Library    Screenshot

*** Variables ***

${URL}=     http://automationpractice.com/index.php

*** Keywords ***
Open The Internet Browser

    Open Chrome Browser    ${URL}
    
*** Keywords *** 
Input text
    
    Input Text When Element Is Visible    search_query_top    Działa

*** Keywords ***
Screencapture
    Take Screenshot     

*** Tasks ***
Login test
    Open The Internet Browser
    Screencapture
    Input text
    Screencapture


