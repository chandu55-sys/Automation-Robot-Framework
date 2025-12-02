*** Settings ***
Library  SeleniumLibrary

Resource  ../PTCS/res.robot

*** Variables ***
${url}  https://blazedemo.com/
${browser}  chrome

*** Test Cases ***
Book Flights
    set selenium speed  1seconds
    Launch
    choose from to
    choose flight
    fill the details


