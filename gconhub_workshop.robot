*** Setting ***
Library             SeleniumLibrary
Test Setup          Set Selenium Speed      0.5s
Test Teardown       Close Browser
Resource            ${CURDIR}/variable.resource
Resource            ${CURDIR}/keyword.resource


*** Test Cases *** 
TC001 Password and Confirm Password Is Not Equal
    [Documentation]     Password and Confirm Password Is Not Equal
    [Tags]      Negative
    Open gconhub Website        ${url}        ${browser}
    Click User Button
    Click Subscription Menu
    Input Data At Subscription Page    ${email}    ${password}    ${repassword}    ${name}
    Click Subscription Button
    Validate wording       ${expected_result}

# TC002 Email Aready Exist
#     [Documentation]     Email Aready Exist
#     [Tags]      Negative
#     Open gconhub Website        ${url}        ${browser}
#     Click User Button
#     Click Subscription Menu
#     Input Data At Subscription Page    lek3@mail.com    1234    1234    LekZaza
#     Click Subscription Button
#     Validate wording       Email : lek3@mail.com is already used


