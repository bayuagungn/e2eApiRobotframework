*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../locators/auth.robot
Resource    ../../data/constants/credential.robot

*** Keywords ***
I am on the login page
    Element Should Be Visible    ${inputUsername}
    Element Should Be Visible    ${inputPassword}
    Element Should Be Visible    ${btnSignIn}

Login Admin
    I am on the login page
    Input Text    ${inputUsername}    ${USERNAME}
    Input Password    ${inputPassword}    ${PASSWORD}
    Click Button    ${btnSignIn}
    Sleep    2