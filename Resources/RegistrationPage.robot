*** Settings ***
Library    SeleniumLibrary
Variables  ../Pageobject/locators.py

*** Keywords ***
Open My Browser
    [Arguments]  ${url}  ${cross}
    Open Browser  ${url}  ${cross}
    Maximize Browser Window

    Set Selenium Timeout    10s

Click Register Link
    Click Link  ${link_Reg}

Enter Firstname
    [Arguments]  ${firstname}
    Input Text  ${txt_firstName}  ${firstname}

Enter Lastname
    [Arguments]  ${lastname}
    Input Text  ${txt_lastName}  ${lastname}

Enter Phone
    [Arguments]  ${phone}
    Input Text  ${txt_phone}  ${phone}

Enter Email
    [Arguments]  ${email}
    Input Text  ${txt_email}  ${email}

Enter Address
    [Arguments]  ${address}
    Input Text  ${txt_address}  ${address}

Enter City
    [Arguments]  ${city}
    Input Text  ${txt_city}  ${city}

Enter State
    [Arguments]  ${state}
    Input Text  ${txt_state}  ${state}

Enter Postal Code
    [Arguments]  ${pincode}
    Input Text  ${txt_pincode}  ${pincode}

Select Country
    [Arguments]  ${country}
    Select From List By Label  ${drp_country}  ${country}

Enter Username
    [Arguments]  ${username}
    Input Text  ${txt_userName}  ${username}

Enter Password
    [Arguments]  ${password}
    Input Text  ${txt_password}  ${password}

Enter Confirm Password
    [Arguments]  ${password}
    Input Text  ${txt_confirm}  ${password}

Click Submit
    Click Button  ${btn_submit}
