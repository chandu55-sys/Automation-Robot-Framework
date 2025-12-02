*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}      headlesschrome
${SiteUrl}      https://demo.guru99.com/test/newtours/index.php
${user}         admin
${pwd}          admin

*** Test Cases ***
Login Test
    Open my Browser    ${SiteUrl}    ${Browser}
    Enter user name    ${user}
    Enter password     ${pwd}
    Click signin
    Sleep    3 seconds
    Verify login
    Close the browser

