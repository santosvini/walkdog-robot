*** Settings ***
Documentation    Suite de testes da página principal

Resource        ../resources/cadastro.robot

Test Setup       Iniciar Sessão 
Test Teardown    Encerrar Sessão

*** Test Cases ***
TC 01 - WebApp deve estar online
  Title Should Be                    ${title}
  Page Should Contain                Cuidado e diversão em cada passo
  Get Text                           css=main p
  Wait Until Element Is Visible      css=img[alt="Walkdog"]
  Sleep    3s