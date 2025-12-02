*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Loginresources.robot

Suite Setup       launch Browser
Suite Teardown    Close All Browsers
Test Template     Invalid login

*** Test Cases ***        username                 password
Right user empty pwd      admin@yourstore.com      aadadada
Right user wrong pwd      admin@yourstore.com      xyz
Wrong user right pass     admi@123                 admin
Wrong user empty pass     admi@123                 ${EMPTY}
Wrong user wrong pass     admin@123.com            admin


*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input username       ${username}
    Input pwd            ${password}
    Click login button
    Error message should be visible
