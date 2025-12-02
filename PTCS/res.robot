*** Settings ***
Library  SeleniumLibrary
*** Keywords ***


Launch
    open browser    ${url}  ${browser}
    Maximize Browser Window
choose from to
    select from list by value   name:fromPort  Philadelphia
    select from list by value   name:toPort   New York
    click element  xpath://input[@value='Find Flights']
choose flight
    click element  xpath://tbody/tr[1]/td[1]/input[1]
fill the details
    Input Text   xpath://input[@id='inputName']   Tester
    Input Text   xpath://input[@id='address']     US
    Input Text   xpath://input[@id='city']        florida
    Input Text   xpath://input[@id='state']       florida
    Input Text   xpath://input[@id='zipCode']    545234
    select from list by value   id=cardType  amex
    Input Text   xpath://input[@id='creditCardNumber']  732
    Input Text   xpath://input[@id='creditCardMonth']   12
    Input Text   xpath://input[@id='creditCardYear']   2026
    Input Text   xpath://input[@id='nameOnCard']        Tester123
    click element    xpath://input[@value='Purchase Flight']

