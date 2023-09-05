*** Settings ***
Library     SeleniumLibrary
Library     RPA.Windows
Resource    ../Keywords/common_keywords.robot
Resource    ../Variables/common_variables.robot
Resource    ../Variables/registration_variables.robot

*** Keywords ***
Registration DemoWeb

    ${pagetitle}=   OpenBrowse    ${Base_url}    ${browser}
    Log To Console    ${pagetitle}
    Log    ${pagetitle}

    Set Selenium Implicit Wait    5 second

    ${registration}   Run Keyword And Return Status    Element Should Be Visible    ${demoregistration_link}
    Sleep    2 second
    Run Keyword If    ${registration}    Click Element    ${demoregistration_link}

Enter user details
    Click Element    ${demogender}
    Input Text    ${demofirst_name}    Ashwani
    Input Text    ${demoLast_name}    rawat
    Input Text    ${demoemail_box}    sampleterra7@gmail.com
    Input Password    ${demopassword_box}    sampleterra
    Input Password    ${democonfirm_password}    sampleterra

Submit registration
    Click Element    ${demoregister_button}
    Sleep    5
    ${registration_text}    RPA.Windows.Get Text    ${demoreg_text}
    Should Be Equal    ${registration_text}   ${demoregistration_text}
    Log To Console    ${demoreg_msg}

Registration DemoQA
    ${pagetitle}=   OpenBrowse    ${demoqa_url}    ${browser}
    Log To Console    ${pagetitle}
    Log    ${pagetitle}

    Set Selenium Implicit Wait    5 second

Enter DemoQA User Details
    Input Text    ${demoqafirst_name}    Ashwani
    Input Text    ${demoqalast_name}    Rawat
    Input Text    ${demoqa_email}    sampleterra9@gmail.com
    Click Element    ${demoqa_gender}
    Sleep    4
    Input Text    ${demoqa_pass}    sampleterra1@
    Click Element    ${demoqa_datalable}
    Sleep    4


submit DemoQA Registration
    Click Element    ${demoqa_submit}
    Sleep    5
    ${registration_text}    RPA.Windows.Get Text    ${demoqareg_text}
#    Should Be Equal    ${registration_text}   ${demoqa_text}
    Log To Console    ${demoreg_msg}
