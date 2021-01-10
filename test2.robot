*** Settings ***

#Library         ExcelDataDriver   ./testdata/login_data.xlsx   sheet_name=Sheet1
#Library         DataDriver   ./testdata/login_data.xlsx   sheet_name=Sheet1
Library           Dialogs
Library           Selenium2Library
Variables         ./config_${env}.yaml



*** Test Cases ***

tc_1
    Open Browser            https://google.com.vn           ${webdriver}
    log to console              222222

tc_2
    log to console              111111
    log to console              222222

tc_3
    log to console              111111
    log to console              222222






