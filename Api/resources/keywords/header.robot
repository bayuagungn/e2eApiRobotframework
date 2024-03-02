*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource    ../../configs/environment.robot
Resource    ../../configs/application_variables.robot
Resource    ../../configs/constants.robot

*** Keywords ***
Create Session With Authentication get token
    ${headers}    Create Dictionary    apikey=${API_KEY}    Content-Type=application/json;charset=UTF-8    x-client-info=supabase-js-web/2.36.0
    Set Test Variable    ${headers}
   
Create Session header with token [Argument] ${token}
    ${headers}    Create Dictionary    apikey=${API_KEY}    Content-Type=application/json;charset=UTF-8    x-client-info=supabase-js-web/2.36.0    authorization=Bearer ${token}
    Set Test Variable    ${headers}