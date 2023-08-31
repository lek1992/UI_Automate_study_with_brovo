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
${url}      https://www.gconhub.com/
${browser}      chrome

*** Keywords ***
Open gconhub Website and input data test
    [Arguments]     ${email}    ${password}     ${repassword}       ${name}
    Set Selenium Speed      0.5
    Open Browser    ${url}       ${browser}
    Maximize Browser Window
    Click Element   ${userBtn}
    Click Element   ${registerUserBtn}
    Input Text      ${emailTxtbox}      ${email}
    Input Text      ${passwordTxtbox}      ${password}
    Input Text      ${confirmPasswordTxtbox}      ${repassword}
    Input Text      ${nameAtWebTxtbox}      ${name}
    Click Element   ${registerBtn}
    ${txt}=     Get Text    ${password_not_match_response_msg}
    Should Be Equal     ${txt}      รหัสไม่ตรงกัน

*** Test Cases *** 
Test Password and Confirm Password Is Not Equal
    [template]     Open gconhub Website and input data test
    lek11@gmail.com     1234    5678    lek123
    lek12@gmail.com     12341    56781    lek222
    lek13@gmail.com     12342    56782    lek333
    lek14@gmail.com     12343    56783    lek444
    lek15@gmail.com     12344    56784    lek555
