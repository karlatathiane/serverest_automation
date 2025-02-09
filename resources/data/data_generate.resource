*** Settings ***
Resource    ../utils/resources.resource

*** Keywords ***
Data Generation

    ${name}    First Name
    Set Suite Variable    ${name}
    ${surname}    Last Name
    Set Suite Variable    ${surname}
    Set Global Variable    ${full_name}    ${name} ${surname}
    ${email}    Set Variable    ${name}_${surname}@serverest.com
    Set Suite Variable    ${email}
    ${password}    Password
    Set Suite Variable    ${password}

    
    ${random_product_name}    get random home appliance
    Set Suite Variable    ${random_product_name}

    ${3digits}    Random Number    3
    ${2digits}    Random Number    2

    Set Suite Variable    ${random_price}      ${3digits},${2digits}
    
    ${random_product_description}    Generate Random String    100     [LETTERS]
    Set Suite Variable    ${random_product_description}

    ${QUANTITY}    Generate Random String    2    [NUMBERS]
    Set Suite Variable    ${QUANTITY}
