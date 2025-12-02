*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTest
    Open Browser    https://demo.automationtesting.in/Windows.html    chrome
    Click Element    xpath=//a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    Sleep    2s
    Select Window    url=https://www.selenium.dev/
    Click Element    xpath=//span[normalize-space()='Support']
