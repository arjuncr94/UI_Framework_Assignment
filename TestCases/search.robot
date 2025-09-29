*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/keywords.robot
Suite Setup    Open the Browser
Suite Teardown    Close the Browser
Test Template    SearchTest

*** Test Cases ***
Item to search    dress

*** Keywords ***
SearchTest
    [Arguments]   ${product}
     Click on menu options
     Search item    ${product}
     Click on search button
     Verify Text on page
     Add To Cart


    

