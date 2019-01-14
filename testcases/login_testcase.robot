*** Settings ***
Test Teardown     Close All browsers
Resource          ../keywords/common_keyword.robot
Resource          ../keywords/login_keyword.robot

*** Test Cases ***
OrangeHRM Login for registered user
    [Tags]    login     regression
    Open Browser To Landing Page
    Go To Login Page
    Fill Input Login Form     ${USERNAME}     ${PASSWORD}
    Verify Login is Successful      ${USERNAME}

OrangeHRM Login for invalid password
    [Tags]    login     regression
    Open Browser To Landing Page
    Go To Login Page
    Fill Input Login Form     ${USERNAME}     12345
    Verify Login Failure Dialog Is Visible     ${error_text}

