*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/variables.resource
Resource   ../Resources/locators.resource

*** Keywords ***

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
