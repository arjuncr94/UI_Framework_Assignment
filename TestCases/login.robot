*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/keywords.robot
#Library    DataDriver    ../Resources/data.xlsx
Suite Setup    Open The Browser
Suite Teardown    Close The Browser
Test Template    loginTest

*** Test Cases ***
#LoginTestExcel with ${username} and ${password}

Right UN Right pwd    arjuncr94@gmail.com    Practice@12

*** Keywords ***
loginTest
    [Arguments]    ${username}    ${password}    

    Click on Login option
    Input User Name    ${username}
    Input The Password    ${password}
    Click Login
    Login Msg