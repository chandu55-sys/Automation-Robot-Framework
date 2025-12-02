*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  https://www.facebook.com
${BROWSER}     Edge

*** Test Cases ***
Open Browser And Verify Title
    setup browser
    Title Should Be    Facebook – log in or sign up
    Close Browse



*** Keywords ***
setup browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set
