*** Settings ***
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Resource            ../PageObjects/BookPage/bookPage.robot

Test Setup          Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
${VALID_USERNAME}             support@ngendigital.com
${VALID_PASSWORD}             abc123

*** Test Cases ***
Positive - User Can Book Flight 
    [Tags]    tc-001    Booking
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    username=${VALID_USERNAME}
    Input User Password    password=${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login
    Click Book Button on Home Screen
    Verify Book Page Appears
    Choosing Type of Flight
    Choosing Type of City
    Choosing Type of Destination City
    Choosing Type of Class
    Choosing Start Date
    Choosing End Date Date
    Choosing Type of Flight Packet
    Click Book Button on Book Menu
    Verify Booking Price Appears
    Choosing Type of Price Packet
    Confrim Order
    Verify Booking Order has Completed