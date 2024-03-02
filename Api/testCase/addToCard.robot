*** Settings ***
Resource    ../resources/keywords/header.robot
Resource    ../configs/constants.robot
Library     RequestsLibrary
Resource    ../configs/route.robot
Library     JSONLibrary
Library     OperatingSystem
Resource    ../configs/application_variables.robot
Resource    ../configs/constants.robot

*** Test Cases ***
Generate Password
    [Documentation]    verivication user Login
    Create Session With Authentication get token
    ${request_body}=    Create Dictionary    email=${UserName}    password=${Password}    gotrue_meta_security={}
    ${response}=    POST    ${BASE_URL}${refrehsToken}    headers=${headers}    json=${request_body}
    ${json_response}=    Set Variable    ${response.json()}
    ${token}    Set Variable    ${json_response}[access_token]
    Validate Json By Schema File     ${json_response}     ${schemaToken}
    Set Suite Variable    ${token}
     Should Be Equal As Strings    ${response.status_code}    200
    ${user}    Set Variable    ${json_response}[user][email]
    Should Be Equal    ${user}    ${UserName}
Get data product
    [Documentation]    verivikasi get data product
    Create Session header with token [Argument] ${token}
    ${response}=    GET    ${BASE_URL}${getProduct}    headers=${headers}
    ${json_response}=    Set Variable    ${response.json()}
    Validate Json By Schema File     ${json_response}     ${schemaProduct}
Add product to cart
    [Documentation]    verivikasi get data product
    Create Session header with token [Argument] ${token}
    ${request_body}    Load Json From File    ${schemaAddToCart}
    ${response}=    POST    ${BASE_URL}${rpc/AddToCard}    headers=${headers}    json=${request_body}
    Should Be Equal As Strings    ${response.status_code}    204
Get product in cart
    [Documentation]    verivikasi get data product
    Create Session header with token [Argument] ${token}
    ${response}=    GET    ${BASE_URL}${getCard}    headers=${headers} 
    ${json_response}=    Set Variable    ${response.json()}
    ${cerification_body}    Load Json From File    ${schemaGetToCart}
    Validate Json By Schema    ${json_response}    ${cerification_body}
