*** Settings ***

*** Test Cases ***
TC1 Registration Test
    [Tags]    sanity
    Log To Console  this is user regestration
    Log To Console  use registration test is over
TC2 LoginTest
    [Tags]    sanity
    Log To Console  this is login test
    Log To Console  use login test is over
TC3 change user settings
    [Tags]  Regression
    Log To Console   this is user settings
    Log To Console  user setting is over
TC4 log out
    [Tags]   sanity
     Log To Console  this is logout test
     Log To Console  user is log out test is over