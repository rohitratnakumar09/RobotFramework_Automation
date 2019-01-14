*** Variables ***
${login_input_username}               id=txtUsername
${login_input_password}               id=txtPassword
${login_button_submit}                id=btnLogin
${login_block}                        id=logInPanelHeading
${invalid_credentials}                xpath=//span[contains(text(),"Invalid credentials")]
${error_text}                         Invalid credentials
${login_welcome}                      xpath=//*[@id="welcome"]