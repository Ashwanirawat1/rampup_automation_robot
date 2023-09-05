*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/common_keywords.robot
Resource    ../Variables/common_variables.robot
Resource    ../Variables/login_variables.robot

*** Keywords ***
Login DemoWeb

    ${pagetitle}=   OpenBrowse    ${Base_url}    ${browser}
    Log To Console    ${pagetitle}
    Log    ${pagetitle}

    Set Selenium Implicit Wait    5 second

    ${login}   Run Keyword And Return Status    Element Should Be Visible    ${demologin_link}
    Sleep    2 second
    Run Keyword If    ${login}    Click Element    ${demologin_link}
Enter Email and Password
    Input Text    ${demoemail_box}    ${demouser}
    Input Text    ${demopassword_box}    ${demopass}
Submit Login
    Click Element    ${demologin_button}
    Sleep    2
    ${entered_email}    Get Text    ${demouser_info}
    Should Be Equal    ${demouser}   ${entered_email}
    Log To Console    ${demologin_msg}


Login OrangeHRM

    ${pagetitle}=   OpenBrowse    ${orange_url}    ${browser}
    Log To Console    ${pagetitle}
    Log    ${pagetitle}

    Set Selenium Implicit Wait    5 second

Enter Orange Email and Password
    Input Text    ${orange_email}    Admin
    Input Text    ${orange_password}    admin123
Submit Orange Login
    Click Element    ${orange_submit}
    Sleep    4

    ${orange}    Get Text    ${orange_dashboard}
    Should Be Equal    ${orange}   ${orange_text}
    Log To Console    ${demologin_msg}