*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MyFrame
    open browser  https://ui.vision/demo/webtest/frames/    chrome

    select frame    xpath=//frame[@src='frame_1.html']  #id name xpath
    input text      name=mytext1    chandu
    unselect frame

    select frame    xpath=//frame[@src='frame_2.html']
    input text      name=mytext2    yandra
    unselect frame

    select frame    xpath=//frame[@src='frame_3.html']
    input text  name=mytext3    raju
    unselect frame

