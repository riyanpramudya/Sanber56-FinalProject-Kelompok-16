*** Settings ***
Resource             ../base.robot
Variables            searchpage_locators.yaml
Library              AppiumLibrary

*** Keywords ***

Verify Search Page Appears
    Wait Until Element Is Visible    ${label_enter_flightNumber_searchPage}
    Wait Until Element Is Visible    ${flightNumber_input_searchPage}
    Wait Until Element Is Visible    ${search_button_searchPage}

Input Flight Number
    [Arguments]       ${flight_number}
    Input Text        ${flightNumber_input_searchPage}    ${flight_number}

Click Search In Button On Search Page 
    Click Element    ${search_button_searchPage}

Verify Flight Number Page
    Wait Until Element Is Visible    ${label_result_destination_searchPage}
    Wait Until Element Is Visible    ${label_result_flightnumber_searchPage}
    Wait Until Element Is Visible    ${label_terminal_searchPage}
    Wait Until Element Is Visible    ${label_result_terminal_searchPage}
    Wait Until Element Is Visible    ${label_schedule_searchPage}
    Wait Until Element Is Visible    ${label_result_schedule_searchPage}
    Wait Until Element Is Visible    ${label_departed_searchPage}
    Wait Until Element Is Visible    ${label_result_departed_searchPage}

Verify Error Message Invalid Flight Number
    Wait Until Page Contains Element   ${error_message_invalid_flight_number}

