*** Settings ***
Library     SeleniumLibrary
Library     String


*** Variables ***
${url_webtoon}              https://www.webtoons.com/th/
${login_btn}                id=btnLogin
${sign_up_btn}              id=btnSignUp
${email_txt_box}            id=email
${password_txt_box}         id=pw
${re_password_txt_box}      id=retype_pw
${nickname_txt_box}         id=nickname
${sign_up_now_btn}          css=#content > div > div.inner_wrap > div > a
${confirm_btn}              xpath=//*[@id="wrap"]/div[5]/div[2]/div/div/a
${email_confirm_txt}        xpath=//*[@id="wrap"]/div[5]/div[2]/div/div/h2

# ${email}    lekiimaru4@gmail.com
${password}                 R.q*XrP_KmpM4cA
${rePassword}               R.q*XrP_KmpM4cA
${nickname}                 lek1992
${emailConfirm}             ส่งอีเมลยืนยัน


*** Test Cases ***
Sign Up Webtoon Success
    [Documentation]    This IS Test Case Sign Up Webtoon
    [Tags]    sign up webtoon
    Open Webtoon Website
    Click Login Button
    Click Sign Up Button
    Input Data On Sign Up Page
    Click Sign Up Now Button
    Validate Wording Email Confirm
    Click Confirm Button
    Close Browser


*** Keywords ***
Open Webtoon Website
    Set Selenium Speed    0.5
    Open Browser    ${url_webtoon}    chrome
    Maximize Browser Window

Click Login Button
    Wait Until Element is Visible    ${login_btn}    5s
    Click Element    ${login_btn}

Click Sign Up Button
    Wait Until Element is Visible    ${sign_up_btn}    5s
    Click Element    ${sign_up_btn}

Input Data On Sign Up Page
    Wait Until Element is Visible    ${email_txt_box}    5s
    ${txt}    Generate Random String
    # ${email}=    Catenate    ${txt}@gmail.com
    Input Text    ${email_txt_box}    ${txt}@gmail.com
    Input Text    ${password_txt_box}    ${password}
    Input Text    ${re_password_txt_box}    ${rePassword}
    Input Text    ${nickname_txt_box}    ${nickname}

Click Sign Up Now Button
    Wait Until Element is Visible    ${sign_up_now_btn}    5s
    Click Element    ${sign_up_now_btn}

Validate Wording Email Confirm
    Wait Until Element is Visible    ${email_confirm_txt}    5s
    ${txt}    Get Text    ${email_confirm_txt}
    Should Be Equal    ${txt}    ${emailConfirm}

Click Confirm Button
    Wait Until Element is Visible    ${confirm_btn}    5s
    Click Element    ${confirm_btn}
