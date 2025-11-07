*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/variables.resource
Resource   ../Resources/locators.resource
*** Keywords ***

Open the Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    10 seconds


Click on Login option
    Wait Until Page Contains    ${LOGIN_MENU}
    Click Link    ${LOGIN_MENU}

Input user name
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}     ${username}

Input the password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click on Login button
    Click Element    ${LOGIN_BUTTON}