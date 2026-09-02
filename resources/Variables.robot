*** Settings ***
Documentation    Declaring variables for the test cases.

*** Variables ***
${URL}    https://katalon-demo-cura.herokuapp.com/
${BROWSER}    Chrome
${TOGGLE_MENU}  id:menu-toggle
${LOGIN_XPATH}  //*[@id="sidebar-wrapper"]/ul/li[3]/a
${USERNAME_FIELD}  id:txt-username
${PASSWORD_FIELD}  id:txt-password
${LOGIN_BUTTON}  id:btn-login
${SUCCESS_LOGIN_MESSAGE}  //*[@id="appointment"]/div/div/div/h2
${INVALID_LOGIN_MESSAGE}  //*[@id="login"]/div/div/div[1]/p[2]
${VALID_USERNAME}  John Doe
${VALID_PASSWORD}  ThisIsNotAPassword
${INVALID_USERNAME}  InvalidUser
${INVALID_PASSWORD}  InvalidPass
${INVALID_USERNAME_MESSAGE}  Login failed! Please ensure the username and password are valid.
${INVALID_PASSWORD_MESSAGE}  Login failed! Please ensure the username and password are valid.
${FACILITY_FIELD}  id:combo_facility
${FACILITY_VALUE}  Hongkong CURA Healthcare Center
${HOSPITAL_READMISSION_CHECKBOX}  id:chk_hospotal_readmission
${MEDICARE_RADIO}    xpath=//input[@id="radio_program_medicare"]
${VISIT_DATE_FIELD}  id:txt_visit_date
${VISIT_DATE_VALUE}  12/12/2026
${COMMENT_FIELD}  id:txt_comment
${COMMENT_VALUE}  This is a test appointment.
${BOOK_APPOINTMENT_BUTTON}  id:btn-book-appointment
${SUCCESS_BOOKING_MESSAGE}  //*[@id="summary"]/div/div/div/h2

