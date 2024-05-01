*** Settings ***
Documentation    Arquivo principal do projeto

Library    SeleniumLibrary
Library    BuiltIn
Library    Screenshot
Library    FakerLibrary

*** Variables ***
${url}               https://walkdog.vercel.app/
${chrome}            chrome
${chromeheadless}    headlesschrome
${firefox}           firefox
${edge}              edge

${title}             Walkdog by Papito
${button}            css=a[href="/signup"]
${home}              css=a[href="/"]
${image}             css=img[alt="Walkdog"]
${signup}            ${url}/signup
${title}             Faça seu cadastro
${h1}                Cuidado e diversão em cada passo
${text}              css=main p
${phrase}            Use nosso aplicativo para ganhar dinheiro fazendo o que ama: cuidar de pets
${obrigado}          Recebemos o seu cadastro e em breve retornaremos o contato.  

${input_name}        input[name="name"]
${input_email}       input[name="email"]
${input_cpf}         input[name="cpf"]
${input_cep}         input[name="cep"]
${buscar_cep}        input[type="button"]
${input_adrress}     input[name="addressStreet"]
${input_district}    input[name="addressDistrict"]
${input_cityUF}      input[name="addressCityUf"]
${input_number}      input[name="addressNumber"]
${input_details}     input[name="addressDetails"]
${input_file}        input[type="file"]
${cadastrar}         xpath=//button[contains(.,'Cadastrar')]
${documento}         ${EXECDIR}/img/images.jpeg

*** Keywords ***
Iniciar Sessão
  Open browser            ${url}    ${chromeheadless}
  Set Window Size         1366      768

Encerrar Sessão
  Close Browser