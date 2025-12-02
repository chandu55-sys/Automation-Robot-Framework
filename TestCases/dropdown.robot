*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Link drop down and list boxes
    open browser    ${url}  ${browser}
    set selenium speed      2seconds
    Maximize browser window

    select from list by label   dropdown-class-example  Option2