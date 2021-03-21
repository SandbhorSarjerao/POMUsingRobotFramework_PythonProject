*** Settings ***
Library     SeleniumLibrary
Variables       ../PageObjects/Locators.py

*** Keywords ***
Open Chrome Browser And Enter URL
    [Arguments]    ${url}  ${browser}
    open browser    ${url}  ${browser}
    maximize browser window

Click on Register Link
    click link      ${link_Register}

Select Gender Radio Button
    [Arguments]    ${Gender}
    select radio button     ${radio_Gender}     ${Gender}

Enter First Name
    [Arguments]     ${FirstName}
    input text      ${txt_firstName}      ${FirstName}

Enter Last Name
    [Arguments]     ${LastName}
    input text      ${txt_lastName}      ${LastName}

Enter Email ID
    [Arguments]     ${Email}
    input text      ${txt_Email}        ${Email}

Enter Password
    [Arguments]     ${Password}
    input text      ${txt_Password}     ${Password}

Enter Confirm Password
    [Arguments]     ${ConfirmPassword}
    input text      ${txt_ConfirmPassword}     ${ConfirmPassword}

Click on Register Button
    click element       ${btn_Register}

Verify Login Not Successful
    page should contain     ${logo}

Close Browsers
    close all browsers