*** Settings ***
Documentation    Suite de testes da página principal

Resource        ../resources/cadastro.robot

Test Setup       Iniciar Sessão 
Test Teardown    Encerrar Sessão

*** Test Cases ***
TC00 - Voltar a home do Walkdog
  [Tags]    TC00
  Voltar para home page
TC01 - Quero ser Dog Walker - Cuidar
  [Tags]    TC01
  Clicar em quero ser um dogwlaker
  Valida o titulo e subtitulo do cadastro
  Faz o submit do formulário para "Cuidar"

TC02 - Quero ser Dog Walker - Adestrar
  [Tags]    TC02
  Clicar em quero ser um dogwlaker
  Valida o titulo e subtitulo do cadastro
  Faz o submit do formulário para "Adestrar"

TC 03 - Quero ser Dog Walker
  [Tags]    TC03
  Clicar em quero ser um dogwlaker
  Valida o titulo e subtitulo do cadastro
  Preencher os campos de dados do cadastro
  Preencher os campos de endereço do cadastro
  Adicione documento para cadastro
  Submete o cadastro

TC 04 - Validar campos obrigatorios
  [Tags]    TC04
  Clicar em quero ser um dogwlaker
  Valida o titulo e subtitulo do cadastro
  Campos obrigatorios

TC 05 - Não deve submeter sem o nome completo
  [Tags]    TC05
  Clicar em quero ser um dogwlaker
  Valida o titulo e subtitulo do cadastro
  Preenche o email correto
  Preenche com o cpf válido
  Preencher os campos de endereço do cadastro
  Adicione documento para cadastro
  Submete o cadastro
  Alerts have texts    Informe o seu nome completo
  Take Screenshot

TC 06 - Não deve submeter sem o email
  [Tags]    TC06
  Clicar em quero ser um dogwlaker
  Valida o titulo e subtitulo do cadastro
  Preenche o name lastname completo
  Preenche com o cpf válido
  Preencher os campos de endereço do cadastro
  Adicione documento para cadastro
  Submete o cadastro
  Alerts have texts    Informe o seu melhor email
  Take Screenshot
TC 07 - Não deve submeter sem o CPF
  [Tags]    TC07
  Clicar em quero ser um dogwlaker
  Valida o titulo e subtitulo do cadastro
  Preenche o name lastname completo
  Preenche o email correto
  Preencher os campos de endereço do cadastro
  Adicione documento para cadastro
  Submete o cadastro
  Alerts have texts    Informe o seu CPF
  Take Screenshot
TC 08 - Não deve submeter sem o CEP
  [Tags]    TC08
  Clicar em quero ser um dogwlaker
  Valida o titulo e subtitulo do cadastro
  Preencher os campos de dados do cadastro
  Adicione documento para cadastro
  Submete o cadastro
  Alerts have texts    Informe o seu CEP
  Take Screenshot
  
TC 09 - Número incorreto
  [Tags]    TC09
  Clicar em quero ser um dogwlaker
  Valida o titulo e subtitulo do cadastro
  Preencher os campos de dados do cadastro
  Random Int    min=0
  Adicione documento para cadastro
  Submete o cadastro
  Alerts have texts    Informe um número maior que zero
  Take Screenshot
TC 10 - Não deve submeter sem o documento
  [Tags]    TC10
  Clicar em quero ser um dogwlaker
  Valida o titulo e subtitulo do cadastro
  Preencher os campos de dados do cadastro
  Preencher os campos de endereço do cadastro
  Submete o cadastro
  Alerts have texts    Adcione um documento com foto (RG ou CHN)
  Take Screenshot  
