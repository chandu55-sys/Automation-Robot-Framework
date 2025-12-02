*** Settings ***
Library  SeleniumLibrary
*** Keywords ***
Launch
    [Arguments]    ${appurl}    ${appbrow}
    Open Browser    ${appurl}    ${appbrow}
    Maximize Browser Window
    ${title}=    Get Title
    RETURN    ${title}
