*** Settings ***
Resource             ../base.robot
Variables            bookpage-locators.yaml
Library              AppiumLibrary

*** Keywords ***
Verify Book Page Appears
    Wait Until Element Is Visible   ${label_choosing_oneway_categories} 
    Wait Until Element Is Visible   ${label_choosing_roundtrip_categories} 
    Wait Until Element Is Visible   ${label_choosing_from_city} 
    Wait Until Element Is Visible   ${label_choosing_to_city} 
    Wait Until Element Is Visible   ${label_choosing_class} 
    Wait Until Element Is Visible   ${label_choosing_start_date} 
    Wait Until Element Is Visible   ${label_choosing_end_date} 
    Wait Until Element Is Visible   ${radio_button_flight}
    Wait Until Element Is Visible   ${radio_button_flight_hotel} 
    Wait Until Element Is Visible   ${check_box_1day} 
    Wait Until Element Is Visible   ${button_book} 

Choosing Type of Flight
    Click Element  ${label_choosing_oneway_categories}

Choosing Type of City
    Click Element                  ${label_choosing_from_city}
    Wait Until Element Is Visible  ${label_option_from_city}
    Click Element                  ${label_option_chikago_city}

Choosing Type of Destination City
    Click Element                  ${label_choosing_to_city}
    Wait Until Element Is Visible  ${label_option_to_city }
    Click Element                  ${label_option_to_city_paris}

Choosing Type of Class
    Click Element                  ${label_choosing_class}
    Wait Until Element Is Visible  ${label_option_class}
    Click Element                  ${label_option_class_first}   

Choosing Start Date
    Click Element                   ${label_choosing_start_date}
    Wait Until Element Is Visible   ${label_calendar_1}
    Click Element                   ${label_calendar_ok_1}

Choosing End Date Date
    Click Element                   ${label_choosing_end_date}
    Wait Until Element Is Visible   ${label_calendar_2}
    Click Element                   ${label_calendar_ok_1}

Choosing Type of Flight Packet
    Click Element                    ${radio_button_flight}

Click Book Button on Book Menu
    Click Element                    ${button_book}

Verify Booking Price Appears
    Wait Until Element Is Visible     ${toronto_text_page2}
    Wait Until Element Is Visible     ${plane_picture}
    Wait Until Element Is Visible     ${paris_text_page2}
    Wait Until Element Is Visible     ${text_view_price_booking}

Choosing Type of Price Packet
    Click Element                    ${label_price_1860}

Confrim Order
    Click Element                    ${label_confirm_order}

Verify Booking Order has Completed
    Wait Until Element Is Visible    ${label_complete_order} 


