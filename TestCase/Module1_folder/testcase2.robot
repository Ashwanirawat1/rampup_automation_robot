*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/PageObjects/registrationPO.robot

*** Test Cases ***
Validate Registration Page
    Registration DemoWeb
    Sleep    3
    Enter user details
    Sleep    3
    Submit registration
    Sleep    3