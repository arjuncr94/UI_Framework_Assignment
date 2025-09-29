*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/keywords.robot
Suite Setup    Open the Browser
Suite Teardown    Close the Browser
Test Template    SearchTest

*** Test Cases ***
Login Using     arjuncr94@gmail.com    Practice@12    dress

*** Keywords ***
SearchTest
      [Arguments]      ${username}    ${password}    ${product}
    Click On Login Option
    Input User Name    ${username}
    Input The Password    ${password}
    Click Login
     Click on menu options
     Search item    ${product}
     Click on search button
     Verify Text on page
     Add To Cart
     Cart Page



    

