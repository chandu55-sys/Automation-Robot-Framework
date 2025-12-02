*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources.robot
*** Variables ***
${url}        https://demo.guru99.com/test/newtours/
${chrome}     chrome

*** Test Cases ***
MyTestCase
    ${pagetitle}=    Launch    ${url}    ${chrome}
    Log To Console    ${pagetitle}
    Input Text    name=userName    demo
    Input Text    name=password    demo


