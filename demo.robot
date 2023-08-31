*** Setting ***
Library     SeleniumLibrary

*** Variables ***
${searchTxt}            id=APjFqb
${searchTxt_name}       name=q
${searchTxt_css}        css=#APjFqb
${searchTxt_xpath}      xpath=//*[@id="APjFqb"]
${searchBtn}            name=btnK

*** Keywords ***
Open Google Website
    Set Selenium Speed      0.5
    Open Browser    http://www.google.co.th     chrome      options=add_experimental_option("detach", True)

Input keywords
    Input Text      ${searchTxt}                Mina

Click Search Button
    Click Element   ${searchBtn}

*** Test Cases *** 
Test Open Chrome
    Open Google Website
    Input keywords
    Click Search Button