*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
OpenBrowse
    [Arguments]     ${appurl}   ${appbrowser}
    Open Browser    ${appurl}      ${appbrowser}
    Maximize Browser Window
    ${title}=   Get Title
    [Return]    ${title}

