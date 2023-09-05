*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/PageObjects/registrationPO.robot

*** Test Cases ***
Validate Registration Page
#    Registration DemoWeb
#    Sleep    3
#    Enter user details
#    Sleep    3
#    Submit registration
#    Sleep    3
    Registration DemoQA
    Sleep    3
    Enter DemoQA User Details
    submit DemoQA Registration
    Sleep    3