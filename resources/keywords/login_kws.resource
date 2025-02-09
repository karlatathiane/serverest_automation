*** Settings ***
Documentation    create the keywords used to login
Resource    ../utils/resources.resource


*** Keywords ***
Access The Enviroment
    Open Browser    ${env}    ${browser}
    Maximize Browser Window
    Capture Page Screenshot

Add Default Information
    Add data    ${LOCATOREMAIL}     ${email}   
    Add data    ${LOCATORPASSWORD}   ${password}

Login Button
    Click Elements    ${LOCATORLOGIN}

Click Register Link
    Wait Until Element Is Enabled    ${LOCATORREGISTER}
    Click Elements    ${LOCATORREGISTER}

#User Register
Add User Information
    Data Generation
    Log    ${full_name}
    Add data    ${USER_NAME}        ${full_name} 
    Add data    ${USER_EMAIL}       ${email}
    Add data    ${USER_PASSWORD}    ${password}
    
Check Adm Box
    Click Elements    ${ADM_CHECKBOX}

Click Register button
    Click Elements    ${BTN_REGISTER}

Print Success Message
    Wait For Expected Condition    Login realizado com sucesso
    Capture Page Screenshot    success_register.png

Verify Home
   Wait Until Element Is Visible    ${HOME}

Register Product
    Click Elements    ${PRODUCT_REGISTER_BTN}
    Add data    ${PRODUCT_NAME}    ${random_product_name}
    Sleep    1
    Add data    ${PRODUCT_PRICE}    ${random_price}
    Sleep    1
    Add data    ${PRODUCT_DESCRIPTION}    ${random_product_description}
    Sleep    1
    Add data    ${QUANTITY}    ${QUANTITY}
    Sleep    1
    Click Elements    ${BTN_PRODUCT}
