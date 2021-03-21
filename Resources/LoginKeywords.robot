*** Settings ***
Library     SeleniumLibrary
Variables       ../PageObjects/Locators.py


*** Keywords ***
Open Chrome Browser And Enter URL
    [Arguments]    ${url}  ${browser}
    open browser    ${url}  ${browser}
    maximize browser window

Enter UserName
    [Arguments]     ${UserName}
    input text      ${txt_loginUserName}    ${UserName}

Enter Password
    [Arguments]    ${Password}
    input text      ${txt_loginPassword}     ${Password}

Click Login Button
    click element   ${btn_logIn}

Verify Successful Login
    page should contain     Dashboard

Close Browsers
    close all browsers