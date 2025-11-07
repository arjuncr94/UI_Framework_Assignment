*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/variables.resource
Resource   ../Resources/locators.resource
Library    Collections

*** Keywords ***

Validate Login credentials
        TRY
            Page Should Contain     ${LOGIN_MSG}
            Log To Console    Valid credentials
            Click Logout
        EXCEPT    *
            Log To Console    Invalid credentials or some error occurred
            Go Back
        FINALLY
            Log To Console    Login attempt finished
        END

#      ${result}=   Run Keyword And Return Status   Page Should Contain    ${LOGIN_MSG}       #Visible text as locator
#      IF    ${result}
#          Log To Console    Valid credentials
#          Click Logout
#      ELSE
#          Log To Console    Invalid credentials
#          Go Back
#      END

Login success
    Page Should Contain  ${DASHBOARD_TEXT}

Click on product option
    Click Element    ${PRODUCTS_MENU}  #for link just Visible text is okay as locator


Click logout
    Click Link    ${LOGOUT_LINK}

Logout msg
    Page Should Contain    ${LOGOUT_MSG}

Close the Browser
    Close All Browsers