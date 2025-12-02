*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Time out Test

    open browser    https://demowebshop.tricentis.com/register  chrome
    Maximize browser window


    ${speed}=  get selenium implicit wait
    log to console  {speed}


    set selenium implicit wait  10seconds
    select radio button     Gender  M
    input text      id=FirstName1   chandu
    input text      id=LastName     Tester
    input text      name:Email      Tester655@gmail.com
    input text      name=Password   Tester@123
    input text      name=ConfirmPassword    Tester@123

