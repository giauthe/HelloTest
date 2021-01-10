*** Settings ***
Resource       ./imports.robot
#Library         ExcelDataDriver   ./testdata/login_data.xlsx   sheet_name=Sheet1
#Library         DataDriver   ./testdata/login_data.xlsx   sheet_name=Sheet1
Library          Dialogs
#Suite Setup         Open SwagLabsMobileApp on ios emulator
#Test Template       invalid login


*** Keywords ***
input username
    [Arguments]         ${username}
    input text          ${txt_username}          ${username}

input password
    [Arguments]         ${password}
    input value          ${txt_password}         ${password}

click login button
   Click Element            ${btn_login}


verify error message
    [Arguments]     ${err_message}
    Wait Until Element Is Visible       ${err_message}          ${min_time_out}

clear username and password text
    Clear Text      ${txt_username}
    Clear Text      ${txt_password}

invalid login
    [Arguments]     ${username}      ${password}        ${err_message}
    clear username and password text
    input username              ${username}
    input password              ${password}
    click login button
    verify error message        ${err_message}


valid login
    [Arguments]
    input username              problem_user
    input password              secret_sauce
    click login button





*** Test Cases ***
#Right user empty pass           problem_user                    ${empty}                    ${txt_err_password_message}
#Right user wrong pass           problem_user                    problem_user                ${txt_err_username_password_message}
#Wrong user right pass           problem_uses                    secret_sauce                ${txt_err_username_password_message}
#Wrong user empty pass           problem_uses                    ${empty}                    ${txt_err_password_message}
#Wrong user wrong pass           problem_uses                    problem_user                ${txt_err_username_password_message}
#Login with user and password
tc_1
    Open Browser            https://google.com.vn           ${webdriver}
    log to console              111111
    log to console              222222

tc_2
    log to console              111111
    log to console              222222

tc_3
    log to console              111111
    log to console              222222
#tc_${tcname}





