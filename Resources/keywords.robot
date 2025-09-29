*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/variables.robot
Resource   ../Resources/locators.robot

*** Keywords ***

Open the Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    10 seconds

Close the Browser
    Close All Browsers

Click on menu options
    Click Element    ${PRODUCTS_MENU}  #for link just Visible text is okay as locator

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
    Page Should Contain    ${LOGIN_MSG} #Visible text as locator
Logout msg
    Page Should Contain    ${LOGOUT_MSG}
Login success
    Page Should Contain  ${DASHBOARD_TEXT}

Search item
    [Arguments]    ${product}
    Input Text    search    ${product}

Click on search button
    Click Element    ${SEARCH_BUTTON}

Verify Text on page
    Page Should Contain    ${VISIBLE_TEXT}

Add to Cart
    Click Element    ${VIEW_PRODUCT}
    Click Element    ${ADD_CART}
    Wait Until Element Is Visible      ${CONTINUE_SHOPPING}
    Click Element     ${CONTINUE_SHOPPING}

Cart Page

    Click Link    ${CART_BUTTON}
    Click Link    ${PROCEED}
    Sleep    3
    Page Should Contain    ${ADDRESS}  
    Click Link    ${ORDER}

