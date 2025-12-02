*** Settings ***
Resource    ../PTCS/HRMResources.robot
Library     SeleniumLibrary
Test Template    Execute Login
Library  DataDriver  ../TestData/Logindata.xlsx    sheet_name=Sheet1

*** Test Cases ***
#Invalid Login Test           Admin    admin123d
#Invalid Password Test      Admin    wrongpass
#Invalid Username Test      WrongUser    admin123
LOGINTESTWITHEXCEL using  ${username}   ${password}

*** Keywords ***

Execute Login
    [Arguments]    ${username}    ${password}
    Launch Browser
    Login Details    ${username}    ${password}
    Sleep    2s
    # Only check error for negative cases


    
    Close Browser
