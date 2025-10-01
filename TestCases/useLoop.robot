*** Test Cases ***
Click Products With IF Without Range
    Open Browser    https://www.automationexercise.com/products    Chrome
    Maximize Browser Window

    ${products}=    Get WebElements    //div[contains(@class,'product-image-wrapper')]

    :FOR    ${product}    IN    @{products}
    \    ${price_text}=    Get Text    ${product}//h2
    \    IF    '${price_text}'=='Rs. 400' or '${price_text}'=='Rs. 500'
    \        Click Element    ${product}//a[text()='View Product']
    \        Go Back
    \    END

    Close Browser
