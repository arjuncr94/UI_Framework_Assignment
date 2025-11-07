*** Settings ***
Library    SeleniumLibrary
#Library    ../Resources/custom_keyword.py
Resource    ../Resources/Homepage.resource
Resource    ../Resources/login.resource
Resource    ../Resources/search.resource
Suite Setup    Open the Browser
Suite Teardown    Close the Browser
Test Template    EndToEnd

*** Test Cases ***
Login With Valid User
             arjuncr94@gmail.com    Practice@12  #TestTemplate is used in every test case here


*** Keywords ***
EndToEnd
    [Arguments]    ${username}    ${password}
    Click on Login option
    Input User Name    ${username}
    Input The Password    ${password}
    Click On Login Button
    Click On Product Option
    Search Multiple Products And Verify
