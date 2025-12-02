*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MyTestCase
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window

    open browser    https://testautomationpractice.blogspot.com/    chrome

    #close browser
    close all browser


