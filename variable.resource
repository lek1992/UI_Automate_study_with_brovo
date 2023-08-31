*** Variables ***
# -----locator-------
${userBtn}                  id=login-title
${registerUserBtn}          css=#login-menu-list > div:nth-child(2)
${emailTxtbox}              id=email4
${passwordTxtbox}           id=password
${confirmPasswordTxtbox}    id=repassword
${nameAtWebTxtbox}          id=nickname3
${registerBtn}              name=register
${responseMsgTxt}           id=response

# -----data-------

${url}                      https://www.gconhub.com/
${browser}                  chrome
${email}                    lek3@mail.com
${password}                 1234
${repassword}               5678
${name}                     lek123
${expected_result}          รหัสไม่ตรงกัน
