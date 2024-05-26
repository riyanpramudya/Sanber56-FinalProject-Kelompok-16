*** Settings ***
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot

Test Setup          Open Flight Application
Test Teardown       Close Flight Application


*** Variables ***
${VALID_USERNAME}               support@ngendigital.com
${VALID_PASSWORD}               abc123
${INVALID_USERNAME}             support@ngendigital.commmm
${INVALID_PASSWORD}             abc1233333
${INVALID_USERNAME_CAPITAL}     Support@ngendigital.com
${INVALID_PASSWORD_CAPITAL}     Abc123
${EMPTY_DATA}                   ${EMPTY}


*** Test Cases ***
Positive - User Should Be Able To Login With Valid Credential
    [Tags]    tc-001    Sign In
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login

Negative - User Should Not Be Able To Login With Invalid Credential
    [Tags]    tc-002    Sign In
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${INVALID_USERNAME}
    Input User Password    password=${INVALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Failed Login

Negative - User Should Not Be Able To Login With Invalid Username Capital
    [Tags]    tc-003    Sign In
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${INVALID_USERNAME_CAPITAL}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Failed Login

Negative - User Should Not Be Able To Login With Invalid Password Capital
    [Tags]    tc-004    Sign In
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    Input User Password    password=${INVALID_PASSWORD_CAPITAL}
    Click Sign In Button On Login Screen
    Verify Failed Login

Negative - User Should Not Be Able To Login With Empty Username Field
    [Tags]    tc-005    Sign In
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${EMPTY_DATA}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Failed Login

Negative - User Should Not Be Able To Login With Empty Password Field
    [Tags]    tc-006    Sign In
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    Input User Password    password=${EMPTY_DATA}
    Click Sign In Button On Login Screen
    Verify Failed Login

Negative - User Should Not Be Able To Login With Empty Credential
    [Tags]    tc-007    Sign In
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${EMPTY_DATA}
    Input User Password    password=${EMPTY_DATA}
    Click Sign In Button On Login Screen
    Verify Failed Login
