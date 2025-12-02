*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://petstore.octoperf.com/actions/Catalog.action
${browser}  chrome

${username}  one
${password}  one

*** Test Cases ***
Jpet
    set selenium speed  2seconds
    open browser    ${url}  ${browser}
    Maximize Browser Window
    Click Element  xpath://a[normalize-space()='Sign In']
    Login



*** Keywords ***
Login
    Input Text     name=username    ${username}
    Input Text      name=password   ${password}

