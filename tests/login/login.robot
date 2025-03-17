*** Settings ***
Resource    ../../resources/utils/resources.resource

# Suite Setup    Open Browser    
# Suite Teardown    Close Browser

*** Test Cases ***
# Open Browser and login
#     [Documentation]    Choose the browser and login with default user.
#     [Tags]    login
#     Access The Enviroment
#     Add Default Information
#     Login Button
#     Sleep    2
#     Close Browser

# Register a New user
#     Access The Enviroment
#     Click Register Link
#     Add User Information
#     Check Adm Box
#     Click Register button
#     Sleep    2
#     Print Success Message
#     Close Browser

Register a New Product
    Access The Enviroment
    Click Register Link
    Add User Information
    Check Adm Box
    Click Register button
    Sleep    3
    Verify Home
    Register Product
