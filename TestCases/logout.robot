*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/keywords.robot
Suite Setup    Open The Browser
Suite Teardown    Close The Browser
Test Template    LogoutTest

*** Test Cases ***
Login Using     arjuncr94@gmail.com    Practice@12    dress

*** Keywords ***
LogoutTest
    [Arguments]      ${username}    ${password}    ${product}
    Click On Login Option
    Input User Name    ${username}
    Input The Password    ${password}
    Click On Login Button
    Click On Menu Options
    Search Item    ${product}
    Click on search button
    Click Logout
    Logout Msg