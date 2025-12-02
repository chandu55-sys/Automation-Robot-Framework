*** Settings ***
Resource    ../Resources/HRMResources.robot
Library     SeleniumLibrary
Test Template    Execute

*** Test Cases ***       username     password
Valid Login Test           Admin    admin1235
Invalid Password Test      Admin    wrongpass
Invalid Username Test      WrongUser    admin123

*** Keywords ***
Execute
    [Arguments]    ${username}    ${password}
    Launch Browser
    Login Details    ${username}    ${password}
    Sleep    2s
   # Error Message
    Close Browser
