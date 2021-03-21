*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${browser}      chrome
${url}          http://demowebshop.tricentis.com/register
${Gender}       Male
${FirstName}    Mahesh
${LastName}     Patil
${Email}        patilmaheshs1985@gmail.com
${Password}     MaheshPatilS1985
${ConfirmPassword}      MaheshPatilS1985


*** Test Cases ***
Register User Should Not be Successful
    Open Chrome Browser And Enter URL       ${url}      ${browser}
    Select Gender Radio Button      ${Gender}
    Enter First Name        ${FirstName}
    Enter Last Name         ${LastName}
    Enter Email ID      ${Email}
    Enter Password      ${Password}
    Enter Confirm Password      ${ConfirmPassword}
    Click on Register Button
    Sleep       3
    Verify Login Not Successful
    Close Browsers
