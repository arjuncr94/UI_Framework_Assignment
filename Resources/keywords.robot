*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/variables.robot
Resource   ../Resources/locators.robot

*** Keywords ***

Open the Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window


Close the Browser
    Close All Browsers

Click on menu options
    Click Link     ${PRODUCTS}

Click on Login option
    Click Link    ${LOGIN_MENU}

Input user name
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}     ${username}

Input the password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login
    Click Element    ${LOGIN_BUTTON}

Click logout
    Click Link    ${LOGOUT_LINK}

Login msg
    Page Should Contain    ${LOGIN_MSG}

Login success
    Page Should Contain  ${DASHBOARD_TEXT}

Search item
    [Arguments]    ${product}
    Input Text    search    ${product}

Click on search button
    Click Element    ${SEARCH_BUTTON}


Verify Text on page
    Page Should Contain    ${VISIBLE TEXT}