*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com
${BROWSER}      Chrome
${USERNAME}     Admin
${PASSWORD}     admin123

*** Test Cases ***
Login To HRM Demo
    [Documentation]    Opens OrangeHRM demo site and logs in
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    # Wait for login page elements
    Wait Until Page Contains Element    name=username

    # Input username and password
    Input Text    name=username    ${USERNAME}
    Input Text    name=password    ${PASSWORD}

    capture element screenshot  xpath=//img[@alt='company-branding']  log.png
    capture page screenshot  page.png