*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/variables.resource
Resource   ../Resources/locators.resource

*** Keywords ***

Search item
    [Arguments]    ${product}
    Input Text    search    ${product}

Click on search button
    Click Element    ${SEARCH_BUTTON}

Verify Text on page
    Wait Until Page Contains    ${VISIBLE_TEXT}

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
