*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/keywords.robot
#Library    DataDriver    ../Resources/data.xlsx
Suite Setup    Open The Browser
Suite Teardown    Close The Browser
Test Template    LoginTest

*** Test Cases ***
#LoginTestExcel with ${username} and ${password}
Login With Valid User  arjuncr94@gmail.com    Practice@12

*** Keywords ***
LoginTest
    [Arguments]    ${username}    ${password}
    Click on Login option
    Input User Name    ${username}
    Input The Password    ${password}
    Click Login
    Login Msg