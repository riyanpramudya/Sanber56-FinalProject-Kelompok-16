*** Settings ***
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Resource            ../PageObjects/SearchPage/searchPage.robot

Test Setup          Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
${VALID_USERNAME}             support@ngendigital.com
${VALID_PASSWORD}             abc123
${VALID_FLIGHT_NUMBER}        DA935
${INVALID_FLIGHT_NUMBER}      XXXXX
${EMPTY_DATA}                 ${EMPTY}

*** Test Cases ***
Positive - User Should Be Able To Search With Valid Credentials
    [Tags]    tc-008    Search
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login
    Click Search Button On Home Screen
    Verify Search Page Appears
    Input Flight Number    flight_number=${VALID_FLIGHT_NUMBER}
    Click Search In Button On Search Page
    Verify Flight Number Page

Negative - User Should Not Be Able To Search With Invalid Credentials
    [Tags]    tc-009    Search
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login
    Click Search Button On Home Screen
    Verify Search Page Appears
    Input Flight Number    flight_number=${INVALID_FLIGHT_NUMBER}
    Click Search In Button On Search Page
    Verify Error Message Invalid Flight Number

Negative - User Should Not Be Able to Search With Empty Field
    [Tags]    tc-009    Search
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login
    Click Search Button On Home Screen
    Verify Search Page Appears
    Input Flight Number    flight_number=${EMPTY}
    Click Search In Button On Search Page
    Verify Error Message Empty Flight Number