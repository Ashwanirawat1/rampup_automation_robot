*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/PageObjects/loginPO.robot

*** Test Cases ***
Validate Login Page
    Login OrangeHRM
    Sleep    3
    Enter Orange Email and Password
    Sleep    3
    Submit Orange Login
    Sleep    3