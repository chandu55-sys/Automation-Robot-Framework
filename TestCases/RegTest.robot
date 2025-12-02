*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/RegistrationPage.robot

*** Variables ***
${url}     https://demo.guru99.com/test/newtours/
${cross}   chrome

*** Test Cases ***
Registration Test
    Open My Browser       ${url}       ${cross}
    Click Register Link
    Enter Firstname       chandu
    Enter Lastname        Tester
    Enter Phone           552525
    Enter Email           tester@123
    Enter Address         hyderabad
    Enter City            hyderabad
    Enter State           TS
    Enter Postal Code     533245
    Select Country        ALBANIA
    Enter Username        tester
    Enter Password        admin123
    Enter Confirm Password  admin123
    Click Submit
