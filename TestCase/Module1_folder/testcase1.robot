*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/PageObjects/loginPO.robot

*** Test Cases ***
Validate Login Page
    Login DemoWeb
    Sleep    3
    Enter Email and Password
    Sleep    3
    Submit Login
    Sleep    3