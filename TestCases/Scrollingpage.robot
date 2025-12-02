*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Scrollingtest
    set selenium speed  2seconds
    open browser  https://www.countries-ofthe-world.com/flags-of-the-world.html  chrome
    Maximize Browser window
   # execute javascript  window.scrollTo(0/2500)
   #up to desaired element
  # scroll element into view     xpath://img[@alt='Flag of India']
  #up to end
   execute javascript   window.scrollTo(0,document.body.scrollHeight)
   execute javascript   window.scrollTo(0,-document.body.scrollHeight)
