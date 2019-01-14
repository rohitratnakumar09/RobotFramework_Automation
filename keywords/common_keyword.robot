*** Setting ***
Resource          ../config/config.robot
Library           Selenium2Library
Library           DateTime
Library           Collections

*** Keywords ***
Open Browser To Landing Page
    [Arguments]    ${BROWSER}=chrome
    Open browser    ${WEB_BASE_URL}    ${BROWSER}
    maximize browser window
    Set Selenium Speed    ${SPEED}
