*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Homepage.resource
Resource    ../Resources/login.resource
Resource    ../Resources/search.resource
Suite Setup    Open The Browser
Suite Teardown    Close The Browser
Test Template    LogoutTest

*** Test Cases ***
Login Using
     arjuncr94@gmail.com    Practice@12    dress

*** Keywords ***
LogoutTest
    [Arguments]      ${username}    ${password}    ${product}
    Click On Login Option
    Input User Name    ${username}
    Input The Password    ${password}
    Click On Login Button
    Click On Product Option
    Search Item    ${product}
    Click on search button
    Click Logout
    Logout Msg