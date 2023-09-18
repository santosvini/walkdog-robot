*** Settings ***
Documentation    Arquivo de keywords para o cadastro da Walkdog
Resource        ../resources/main.resource

*** Keywords ***
Voltar para home page
  Go to                                ${signup}
  Wait Until Element Is Visible        ${home}
  Click Element                        ${home}
Valida o titulo e subtitulo do cadastro
  Page Should Contain        text=${title}
  Page Should Contain        text=${phrase}

Clicar em quero ser um dogwlaker
  Wait Until Element Is Visible        ${button}
  Click Element                        ${button}
  Go To                                ${signup}
  Wait Until Element Is Visible        css=img[alt="Walkdog"]

Faz o submit do formulário para "${tipo}"
  Preencher os campos de dados do cadastro
  Preencher os campos de endereço do cadastro
  Escolher "${tipo}" em atividades extras
  Adicione documento para cadastro
  Submete o cadastro
  Validação de envio do formulário

Preencher os campos de dados do cadastro
  Preenche o "name lastname" completo
  Preenche o "email" correto
  Preenche com o "cpf" válido

Preencher os campos de endereço do cadastro
  Preenche o "CEP" válido

Preenche o ${name} ${lastname} completo
  Wait Until Element Is Visible    css=${input_name}
  ${name}                          FakerLibrary.FirstName
  ${lastname}                      FakerLibrary.LastName
  Input Text                       css=${input_name}    ${name} ${lastname}

Preenche o ${email} correto
  Wait Until Element Is Visible    css=${input_email}
  ${email}                         FakerLibrary.Free Email
  Input Text                       css=${input_email}    ${email}

Preenche com o ${cpf} válido
  Wait Until Element Is Visible    css=${input_cpf}
  Input Text                       css=${input_cpf}    36431207025

Preenche o ${CEP} válido
  Wait Until Element Is Visible    css=${input_cep}
  ${CEP} =   Catenate    SEPARATOR=-
  ${CEP}                           FakerLibrary.Postcode
  Input Text                       css=${input_cep}    ${CEP}
  Click Button                     css=${buscar_cep}
          
  Element Should Be Disabled       css=${input_adrress}

  ${number}                        FakerLibrary.Random Digit Not Null
  Input Text                       css=${input_number}    ${number}
   
  Input Text                       css=${input_details}    Apto 2

  Element Should Be Disabled       css=${input_district}
  Element Should Be Disabled       css=${input_cityUF}


Escolher "${tipo}" em atividades extras
  Scroll Element Into View         //h2[contains(.,'Atividades extras')]
  Wait Until Element Is Visible    css=.walker-service

  IF    "${tipo}" == "Cuidar"
    Click Element    //li[contains(.,'Cuidar')]
    Wait Until Element Is Enabled    //li[contains(.,'Cuidar')]
  
  ELSE IF    "${tipo}" == "Adestrar"
    Click Element    //li[contains(.,'Adestrar')]
    Wait Until Element Is Enabled    //li[contains(.,'Adestrar')]
  
  ELSE
      Fail    Não há essa opção
  END

Adicione documento para cadastro
  Choose File    css=${input_file}      ${documento}

Submete o cadastro
  Click Element                    ${cadastrar}

Validação de envio do formulário
  Wait Until Element Is Visible    css=.swal2-html-container

Campos obrigatorios
  Alerts have texts    Informe o seu nome completo   
  Alerts have texts    Informe o seu melhor email
  Alerts have texts    Informe o seu CPF  
  Alerts have texts    Informe o seu CEP  
  Alerts have texts    Informe um número maior que zero
  Alerts have texts    Adcione um documento com foto (RG ou CHN)

Alerts have texts
  [Arguments]        ${expected_message}

  ${element}         Set Variable       //span[contains(.,"${expected_message}")]

  Click Button                     ${cadastrar}
  Element Should Be Visible        ${element}