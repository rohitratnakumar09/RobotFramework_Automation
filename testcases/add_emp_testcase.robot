*** Settings ***
Test Teardown     Close All browsers
Resource          ../keywords/common_keyword.robot
Resource          ../keywords/add_emp_keyword.robot

*** Test Cases ***
OrangeHRM Add Employee
    [Tags]    regression
    Open Browser To Landing Page
    Go To Login Page
    Fill Input Login Form     ${USERNAME}     ${PASSWORD}
    Verify Login is Successful      ${USERNAME}
    Go To Add Employee
    Enter Employee Details