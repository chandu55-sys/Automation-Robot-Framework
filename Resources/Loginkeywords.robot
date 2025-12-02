*** Settings ***
Library    SeleniumLibrary
Variables  ../Pageobject/locators.py

*** Keywords ***
Open my Browser
    [Arguments]    ${siteUrl}    ${Browser}
    Open Browser    ${siteUrl}    ${Browser}
    Maximize Browser Window

Enter user name
    [Arguments]    ${username}
    Input Text     ${txt_loginUserName}    ${username}

Enter password
    [Arguments]    ${password}
    Input Text     ${txt_loginPassword}    ${password}

Click signin
    Click Button   ${btnLogin}

Verify login
    Title Should Be    Login: Mercury Tours

Close the browser
    Close All Browsers

