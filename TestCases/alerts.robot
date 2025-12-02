*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Test Cases ***
Myalerts
    open browser  https://testautomationpractice.blogspot.com/  chrome
    click element   xpath://button[@id='confirmBtn']
    sleep   3
    #handle alert  accept
    #handle alert    dismiss
    handle alert    leave
    alert should be present  Press a button!