*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Time out Test

    open browser    https://demowebshop.tricentis.com/register  chrome
    Maximize browser window
    ${time}=        get selenium timeout
    log to console  ${time}
    set selenium timeout    10seconds

    wait until page contains    Registeration

    select radio button     Gender  M
    input text      id=FirstName    chandu
    input text      id=LastName     Tester
    input text      name:Email      Tester655@gmail.com
    input text      name=Password   Tester@123
    input text      name=ConfirmPassword    Tester@123

