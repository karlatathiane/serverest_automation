*** Settings ***
Resource    ../utils/resources.resource

*** Variables ***
${LOCATOREMAIL}        id=email
${LOCATORPASSWORD}     id=password
${LOCATORLOGIN}        //*[@id="root"]/div/div/form/button
${LOCATORREGISTER}    xpath://*[@id="root"]/div/div/form/small/a

#User Register

${USER_NAME}        id=nome
${USER_EMAIL}       id=email
${USER_PASSWORD}    id=password
${ADM_CHECKBOX}     id=administrador
${BTN_REGISTER}     //*[@id="root"]/div/div/form/div[5]/button

${HOME}             //*[@id="navbarTogglerDemo01"]/ul/li[1]/a
#Product Register
${PRODUCT_REGISTER_BTN}    //*[@id="root"]/div/div/p[2]/div[4]/div/div/a   
${PRODUCT_NAME}            //*[@id="nome"]
${PRODUCT_PRICE}           //*[@id="price"]
${PRODUCT_DESCRIPTION}     //*[@id="description"]
${QUANTITY}                //*[@id="quantity"]
${SERVEREST_IMAGE}         //*[@id="imagem"]
${BTN_PRODUCT}             //button[text()="Cadastrar"]
                           