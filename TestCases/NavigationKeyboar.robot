*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mytest
    Open Browser    https://www.google.com/    chrome
    Maximize Browser Window
    ${loc}=    Get Location
    Log To Console    ${loc}

    Go To    https://www.bing.com/
    Maximize Browser Window
    ${loc}=    Get Location
    Log To Console    ${loc}

    Go Back
    ${loc}=    Get Location
    Log To Console    ${loc}
