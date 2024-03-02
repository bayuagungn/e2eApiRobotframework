*** Settings ***
Resource         ../resources/keywords/general_keyword.robot
Resource         ../resources/pages/login.robot
Resource         ../data/constants/credential.robot


Test Setup       Open Web Browser
Test Teardown    Close Web Browser

*** Test Cases ***
Login With Admin
    [Documentation]    Verifikasi success login
    [Tags]    Regression    Positif_case    Login
    Given I am on the login page
    When Input Text    ${inputUsername}    ${USERNAME}
    And Input Password    ${inputPassword}    ${PASSWORD}
    Then Click Button    ${btnSignIn}
     
