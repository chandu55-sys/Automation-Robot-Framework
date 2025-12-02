*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}       https://admin-demo.nopcommerce.com/login?returnUrl=%2Fadmin%2F
${browser}   chrome

*** Keywords ***

launch Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

login page
    Go To    ${url}

Input username
    [Arguments]    ${username}
    Input Text    id=Email    ${username}

Input pwd
    [Arguments]    ${password}
    Input Text    id=Password    ${password}

click login button
    Click Element    xpath://button[normalize-space()='Log in']

click logout
    Click Element    xpath://a[normalize-space()='Logout']

Error message should be visible
    Page Should Contain    Login was unsuccessful

Dashboard page should be visible
    Page Should Contain    Dashboard

close all browsers
    Close All Browsers
