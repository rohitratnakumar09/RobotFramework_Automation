*** Settings ***
Library           Selenium2Library
Resource          ../locators/login_locator.robot



*** Keywords ***
Go To Login Page
    Go To    ${WEB_BASE_URL}
    Wait Until Element Is Visible    ${login_block}

Fill Input Login Form
    [Arguments]    ${username}    ${password}
    Input Text    ${login_input_username}    ${username}
    Input Password    ${login_input_password}    ${password}
    Click Element    ${login_button_submit}
    Sleep    2

Verify Login is Successful
    [Arguments]  ${username}
    Wait Until Element Is Visible       ${login_welcome}    ${TIMEOUT}
    ${login_username}     Get Text    ${login_welcome}
    ${text}  Catenate    Welcome    ${username}
    Should Be Equal    ${text}    ${login_username}



Verify Login Failure Dialog Is Visible
    [Arguments]    ${error_text}
    Wait Until Element Is Visible    ${invalid_credentials}    ${TIMEOUT}
    ${text}     Get Text    ${invalid_credentials}
    Should Be Equal    ${text}    ${error_text}
