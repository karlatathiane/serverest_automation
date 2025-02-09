*** Settings ***
Documentation    Keywords to use in other keywords
Resource    ../utils/resources.resource

*** Keywords ***
Add data
    [Arguments]    ${LOCATOR}    ${TEXT}
    Wait Until Element Is Visible    ${LOCATOR}    5
    Input Text    ${LOCATOR}    ${TEXT}

Click Elements
    [Arguments]    ${LOCATOR}
    Wait Until Element Is Visible    ${LOCATOR}    5
    Click Element    ${LOCATOR}
