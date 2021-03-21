*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${browser}      chrome
${url}          https://admin-demo.nopcommerce.com/login?ReturnUrl=/admin/
${UserName}     admin@yourstore.com
${Password}     admin

*** Test Cases ***
Login Test
    Open Chrome Browser And Enter URL       ${url}      ${browser}
    Enter UserName      ${UserName}
    Enter Password      ${Password}
    Click Login Button
    Sleep       3
    Verify Successful Login
    Close Browsers

