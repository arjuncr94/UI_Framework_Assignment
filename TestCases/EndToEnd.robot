*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/keywords.robot
Suite Setup    Open the Browser
Suite Teardown    Close the Browser
Test Template    EndToEnd

*** Test Cases ***
Login With Valid User  arjuncr94@gmail.com    Practice@12

*** Keywords ***
EndToEnd
      [Arguments]    ${username}    ${password}
    Click on Login option
    Input User Name    ${username}
    Input The Password    ${password}
    Click On Login Button
    Validate Login Credentials
    Click On Menu Options
#    Search Multiple Products And Verify
    Click Products With IF Without Range