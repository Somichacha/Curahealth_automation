*** Settings ***
Library    SeleniumLibrary
Documentation   Validate the homepage and login functionality of the Curahealth website using the Page Object Approach.
Resource   ./resources/Variables.robot
Resource   ./resources/Mykeywords.robot
Test Setup   Open Browser    ${URL}    ${BROWSER}
Test Teardown    Close All Browsers


*** Test Cases ***
Verify Curahealth Homepage Is Opened
    [Documentation]    This test case checks if the Curahealth homepage is opened successfully.
    Open Curahealth Homepage

Check Login With Invalid Credentials
    [Documentation]    This test case verifies that invalid credentials fail to login.
    Login Curahealth Invalid Credentials

Check Login With Valid Credentials
    [Documentation]    This test case verifies that a user can log in with valid credentials.
    Login Curahealth

Verify Appointment Creation
    [Documentation]    This test case verifies that a user can make an appointment successfully.
   Login Curahealth
    Make Appointment



