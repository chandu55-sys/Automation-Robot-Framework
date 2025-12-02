*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Multiple Browser Test

    open browser    https://www.google.com/  chrome
    Maximize browser window

    open browser    https://www.bing.com/   chrome
    Maximize browser window

    switch browser  1
    ${title}=      get title
    log to console  ${title}

     switch browser  2
    ${title}=      get title
    log to console  ${title}

    sleep  3


