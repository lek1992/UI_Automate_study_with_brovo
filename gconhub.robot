*** Setting ***
Library     SeleniumLibrary

*** Variables ***
${userBtn}               id=login-title
${registerUserBtn}       css=#login-menu-list > div:nth-child(2)
${emailTxtbox}           id=email4
${passwordTxtbox}        id=password
${confirmPasswordTxtbox}         id=repassword
${nameAtWebTxtbox}       id=nickname3
${registerBtn}           name=register
${password_not_match_response_msg}      id=response

*** Keywords ***
Open gconhub Website
    Set Selenium Speed      0.5
    Open Browser    https://www.gconhub.com/       chrome
    Maximize Browser Window

Click User Button
    Click Element   ${userBtn}

Click Subscription Menu
    Click Element   ${registerUserBtn}

Input Data At Subscription Page
    Input Text      ${emailTxtbox}      lek@gmail.com
    Input Text      ${passwordTxtbox}      1234
    Input Text      ${confirmPasswordTxtbox}      5678
    Input Text      ${nameAtWebTxtbox}      lek1992

Click Subscription Button
    Click Element   ${registerBtn}

Validate wording รหัสไม่ตรงกัน
    ${txt}=     Get Text    ${password_not_match_response_msg}
    Should Be Equal     ${txt}      รหัสไม่ตรงกัน

*** Test Cases *** 
Test Password and Confirm Password Is Not Equal
    [Documentation]     abc
    [Tags]      Negative
    Open gconhub Website
    Click User Button
    Click Subscription Menu
    Input Data At Subscription Page
    Click Subscription Button
    Validate wording รหัสไม่ตรงกัน


