*** Settings ***
Documentation        Segala hal yg berkaitan dengan login
Resource             ../base.robot
Resource             ../HomePage/homePage.robot
Variables            login-page-locators.yaml

*** Keywords ***
Input Username
    [Arguments]                      ${username}
    Wait Until Element Is Visible    locator=${username_input}
    Input Text                       locator=${username_input}         text=${username}

Input User Password
    [Arguments]                      ${password}
    Input Text                       locator=${password_input}         text=${password}

Click Sign In Button On Login Screen
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify Failed Login
    Wait Until Page Contains Element   locator=//android.widget.Toast[@text="Invalid username/password"]

