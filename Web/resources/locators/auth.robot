*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${inputUsername}     xpath://*[@placeholder="Username"]
${inputPassword}     xpath://*[@placeholder="Password"]
${btnSignIn}    xpath://button[text()="Sign in"]