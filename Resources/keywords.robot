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

Click on product option
    Click Element    ${PRODUCTS_MENU}  #for link just Visible text is okay as locator

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

Click logout
    Click Link    ${LOGOUT_LINK}

Validate Login credentials
      ${result}=   Run Keyword And Return Status   Page Should Contain    ${LOGIN_MSG}       #Visible text as locator
      IF    ${result}
          Log To Console    Valid credentials
          Click Logout
      ELSE
          Log To Console    Invalid credentials
          Go Back
      END


Logout msg
    Page Should Contain    ${LOGOUT_MSG}
Login success
    Page Should Contain  ${DASHBOARD_TEXT}

Search item
    [Arguments]    ${product}
    Input Text    search    ${product}

Search multiple products and verify
    ${products_list}=    Create List    Blue Top    Men Tshirt
    FOR    ${product}    IN    @{products_list}
        Input Text    search    ${product}
        Click Element    ${SEARCH_BUTTON}

        ${status}=    Run Keyword And Return Status    Element Should Be Visible    ${VIEW_PRODUCT_COMMON}

        IF    ${status}
            Click Element    ${VIEW_PRODUCT_COMMON}
            Click Element    ${ADD_CART}
            Go Back
        ELSE
            Log To Console    ${product} not found
        END
    END



#            
#                



Click on search button
    Click Element    ${SEARCH_BUTTON}

Verify Text on page
    Wait Until Page Contains    ${VISIBLE_TEXT}

Add to Cart
    Click Element    ${VIEW_PRODUCT}
    Click Element    ${ADD_CART}
    Wait Until Element Is Visible      ${CONTINUE_SHOPPING}
    Click Element     ${CONTINUE_SHOPPING}

Cart Page

    Click Link    ${CART_BUTTON}
    Click Link    ${PROCEED}


Place Order
    Wait Until Page Contains    ${ADDRESS}
    Page Should Contain    ${ADDRESS}  
    Click Link    ${ORDER}





