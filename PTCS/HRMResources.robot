*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}   chrome

*** Keywords ***
Launch Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s

Login Details
    [Arguments]    ${username}    ${password}
    Input Text    name:username       ${username}
    Input Text    name:password       ${password}
    Click Element    xpath://button[@type='submit']

Error Message
    Page Should Contain    Invalid credentials

Close Browser
    Close Browser
