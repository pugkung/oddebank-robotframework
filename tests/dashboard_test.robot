*** Settings ***
Library           Selenium2Library

*** Variables ***
${SERVER}       52.221.213.168:8080
${APP URL}      http://${SERVER}/app

*** Test Cases *** 
Show account summary detail
    Open Browser    ${APP URL}    Chrome
    Maximize Browser Window
    Page Should Contain     Account Number : 0987654321
    Page Should Contain     Balance (THB) : 20,300.00
    [Teardown]    Close Browser