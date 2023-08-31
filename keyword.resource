*** Keywords ***
Open gconhub Website
    [Arguments]     ${url}      ${browser}
    # Set Selenium Speed      0.5
    Open Browser    ${url}       ${browser}
    Maximize Browser Window

Click User Button
    Click Element   ${userBtn}

Click Subscription Menu
    Click Element   ${registerUserBtn}

Input Data At Subscription Page
    [Arguments]     ${email}    ${password}     ${repassword}       ${name}
    Input Text      ${emailTxtbox}      ${email}
    Input Text      ${passwordTxtbox}      ${password}
    Input Text      ${confirmPasswordTxtbox}      ${repassword}
    Input Text      ${nameAtWebTxtbox}      ${name}

Click Subscription Button
    Click Element   ${registerBtn}

Validate wording
    [Arguments]     ${expected_result}
    ${txt}=     Get Text    ${responseMsgTxt}
    Should Be Equal     ${txt}      ${expected_result}
