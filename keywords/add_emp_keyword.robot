*** Settings ***
Library           Selenium2Library
Resource          ../keywords/login_keyword.robot
Resource          ../locators/add_emp_locator.robot


*** Keywords ***
Go To Add Employee
     Mouse Over      ${pim_hover}
     Click Element     ${add_employee}

Enter Employee Details
     Input Text     ${first_name_id}    ${firstname}
     Input Text     ${last_name_id}     ${lastname}
     Choose File    ${photo_id}         ${photo_path}
     Click Element              ${save_id}
