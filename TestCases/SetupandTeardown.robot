*** Settings ***

Suite Setup    log to console   opening browser
Suite Teardown  Log To Console  Closing Browser

Test Setup    Log To Console  Login to applicaiton
Test Teardown  Log to Console  Logout from application


*** Test Cases ***
TC1 Prepaid Recharage
    Log To Console    This is prepared recharge Testcase

TC2 Postpaid Rechage
    Log To Console   This is postpaid Recharge
TC3 Search
    Log to Console  This is a Search

TC4 advanceSearch
    Log To Console  This is a advanced Search



