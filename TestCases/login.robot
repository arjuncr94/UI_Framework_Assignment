*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Homepage.resource
Resource    ../Resources/login.resource
Library    DataDriver    ../Data/data.xlsx
Suite Setup    Open The Browser
Suite Teardown    Close The Browser
Test Template    LoginTest

*** Test Cases ***
LoginTestExcel

*** Keywords ***
LoginTest
    [Arguments]    ${username}    ${password}
    Click On Login Option
    Input User Name    ${username}
    Input The Password    ${password}
    Click On Login Button
    Validate Login Credentials

#  Note
#   Excel sheet -  Excel headers must match keyword argument names
#    direct call under TestCase - First value → first argument, second → second