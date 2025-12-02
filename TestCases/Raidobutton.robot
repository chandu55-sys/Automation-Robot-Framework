*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
Testing Radio Button and CheckBoxes

    Open browser    ${url}  ${browser}
    set selenium speed      2seconds
    Maximize browser window

    select radio button     radioButton   radio1

    select checkbox     checkBoxOption1

    select checkbox     checkBoxOption2

    unselect checkbox     checkBoxOption1

