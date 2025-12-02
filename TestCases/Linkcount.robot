*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
Count Link
    Open Browser    https://demo.guru99.com/test/newtours/reservation.php    chrome
    Maximize Browser Window

    # Get number of links
    ${links}=    Get Element Count    xpath://a
    Log To Console    ${links}

    # Loop through each link
    @{items}=    Create List
    FOR  ${i}    IN RANGE    1    ${links}+1
        ${text}=    Get Text    xpath:(//a)[${i}]
        Log To Console    ${text}

    END

    # Optionally log all items
    Log To Console    ${items}

    Close Browser
