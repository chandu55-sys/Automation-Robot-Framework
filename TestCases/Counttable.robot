*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Table
    open browser    https://testautomationpractice.blogspot.com/    chrome
    maximize browser window

    ${getrow}=  get element count  xpath://table[@name='BookTable']/tbody//tr
    ${getcol}=  get element count  xpath://table[@name='BookTable']/tbody/tr[1]//th

    log to console  row count ${getrow}
    log to console  header count ${getcol}

    ${getvalue}=  get text  xpath://table[@name='BookTable']/tbody//tr[5]//td[1]
    log to console  ${getvalue}

    Table Column Should Contain  xpath://table[@name='BookTable']  2  Author
    Table Row Should Contain  xpath://table[@name='BookTable']  4  	Animesh

    Table Cell Should Contain  xpath://table[@name='BookTable']  5  2  Mukesh
    Table Header Should Contain  xpath://table[@name='BookTable']  BookName