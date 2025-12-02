*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
RegTest

    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser    https://demowebshop.tricentis.com/register  chrome
    Maximize browser window

    set selenium speed  2seconds

    select radio button     Gender  M
    input text      id=FirstName    chandu
    input text      id=LastName     Tester
    input text      name:Email      Tester655@gmail.com
    input text      name=Password   Tester@123
    input text      name=ConfirmPassword    Tester@123
    ${speed}=   get selenium speed
    log to console  ${speed}
