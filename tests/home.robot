*** Settings ***
Documentation    Suite de testes da página principal

Resource        ../resources/cadastro.robot

Test Setup       Iniciar Sessão 
Test Teardown    Encerrar Sessão

*** Test Cases ***
TC 01 - WebApp deve estar online
  [Tags]    webapp
  Title Should Be                    ${title}
  Page Should Contain                ${h1}
  Get Text                           ${text}
  Wait Until Element Is Visible      ${image}