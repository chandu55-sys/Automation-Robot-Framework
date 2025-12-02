*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://www.facebook.com
${BROWSER}      Edge
${USERNAME}     your_email_or_phone
${PASSWORD}     your_password

*** Test Cases ***
Open Browser And Login
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Facebook – log in or sign up

    # Enter username and password
    Input Text    id=email       ${USERNAME}
    Input Text    id=pass        ${PASSWORD}

    # Click login button
    Click Button    name=login

    Sleep  500000s

