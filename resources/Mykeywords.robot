*** Settings ***
Library   SeleniumLibrary
Documentation    This resource file contains custom keywords for the Curahealth website homepage and login tests.
Resource  Variables.robot

*** Keywords ***
Open Curahealth Homepage
  [Documentation]  Open Curahealth Browser and Load Homepage
  Maximize Browser Window
  Click Element   ${TOGGLE_MENU}  
  Click Element    ${LOGIN_XPATH}

Login Curahealth Invalid Credentials
  [Documentation]  Login to Curahealth with invalid credentials
   Click Element   ${TOGGLE_MENU}
  Click Element    ${LOGIN_XPATH}
  Input Text    ${USERNAME_FIELD}    ${INVALID_USERNAME}
  Input Text    ${PASSWORD_FIELD}    ${INVALID_PASSWORD}
  Click Button   ${LOGIN_BUTTON}
  Wait Until Element Is Visible    ${INVALID_LOGIN_MESSAGE}  10s


Login Curahealth
  [Documentation]  Login to Curahealth with valid credentials
  Click Element   ${TOGGLE_MENU}
  Click Element    ${LOGIN_XPATH}
  Wait Until Element Is Visible    ${USERNAME_FIELD}    10s
  Input Text    ${USERNAME_FIELD}    ${VALID_USERNAME}
  Wait Until Element Is Visible    ${USERNAME_FIELD}    10s
  Input Text    ${PASSWORD_FIELD}    ${VALID_PASSWORD}
  Click Button   ${LOGIN_BUTTON}
  Wait Until Element Is Visible    ${SUCCESS_LOGIN_MESSAGE}  10s

Make Appointment
  [Documentation]  Make an appointment in Curahealth
  Select From List By Value    ${FACILITY_FIELD}    ${FACILITY_VALUE}
  Select Checkbox    ${HOSPITAL_READMISSION_CHECKBOX}
  Click Element   ${MEDICARE_RADIO}
  Input Text    ${VISIT_DATE_FIELD}    ${VISIT_DATE_VALUE}
  Input Text   ${COMMENT_FIELD}    ${COMMENT_VALUE}
  Click Button    ${BOOK_APPOINTMENT_BUTTON}
  Wait Until Element Is Visible    ${SUCCESS_BOOKING_MESSAGE}  10s


