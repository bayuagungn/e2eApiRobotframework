*** Settings ***
Resource    ../../configs/web_config.robot

Library    String
Library    OperatingSystem
Library    SeleniumLibrary

*** Keywords ***
Open Web Browser
    Open Browser    ${URL}    ${BROWSER}

Close Web Browser
    Close Browser