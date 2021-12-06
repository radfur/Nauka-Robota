*** Settings ***
Documentation   Prosty robot wpisujący jednego stringa w wyszukiwarkę

Library    RPA.Browser.Selenium

Test Setup    Open Chrome Browser    http://automationpractice.com/index.php
Test Teardown    Close All Browsers     

*** Test Cases ***
Login test using valid credentials
    Input Text When Element Is Visible    search_query_top    Działa
    Textfield Should Contain    search_query_top    Działa
    Sleep    10

