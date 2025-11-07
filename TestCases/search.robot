*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Homepage.resource
Resource    ../Resources/login.resource
Resource    ../Resources/search.resource
Resource    ../Resources/cart.resource
Suite Setup    Open the Browser
Suite Teardown    Close the Browser
Test Template    SearchTest

*** Test Cases ***
Login Using
         arjuncr94@gmail.com    Practice@12    dress


*** Keywords ***
SearchTest
      [Arguments]      ${username}   ${password}    ${product}
    Click On Login Option
    Input User Name    ${username}
    Input The Password    ${password}
    Click On Login Button
     Click On Product Option
     Search item    ${product}
     Click on search button
     Verify Text on page
     Add To Cart
     Cart Page
     Place Order



    

