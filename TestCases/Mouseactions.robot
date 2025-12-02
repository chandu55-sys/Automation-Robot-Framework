*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
MyTestCase

    #Rigt click menu
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html  chrome
    maximize browser window
    open context menu   xpath://span[@class='context-menu-one btn btn-neutral']
    sleep  3



    ## double click
    go to  https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element  xpath://button[normalize-space()='Copy Text']
    sleep  3

    #dragon and drop
    go to  https://testautomationpractice.blogspot.com/
    drag and drop  id=draggable   id=droppable