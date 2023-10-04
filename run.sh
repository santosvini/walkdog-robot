#!/bin/bash

echo "Vamos começar as execuções de testes..."

option() {
  echo "
    0 - Regressão
    1 - Test Case - Home
    2 - Test Case - Retorno a Home
    3 - Test Case - Cuidar
    4 - Test Case - Adestrar
    5 - Test Case - Ser um Dog Walker
    6 - Test Case - Campos Obrigatórios
    7 - Test Case - Cadastro sem nome
    8 - Test Case - Cadastro sem email
    9 - Test Case - Cadastro sem cpf
    10 - Test Case - Cadastro sem cep
    11 - Test Case - Numero Incorreto
    12 - Test Case - Sem documento
    13 - Exit....
  "
  
  read -p "Escolheu a opção: " opcao

  case $opcao in
    "0")
      echo "Excutando testes de regressão..."
      regression=`robot -d ./log --listener allure_robotframework:allure-results tests/`
      
      echo "Estou preparando o seu relatório...."
      
      allure serve allure-results
      
      echo "$regression"
      option
    ;;
    "1")
      echo "Excutando o teste da home..."
      test_home=`robot -d ./log tests/home.robot`
      echo "$test_home"
      option
    ;;
    "2")
      echo "Excutando o teste de retorno a home page..."
      test_case0=`robot -d ./log -i TC00 tests/cadastro.robot`
      echo "$test_case0"
      option
    ;;
    "3")
      echo "Excutando o teste para cuidar de um dog..."
      test_case1=`robot -d ./log -i TC01 tests/cadastro.robot`
      echo "$test_case1"
      option
    ;;
    "4")
      echo "Excutando o teste para adestrar um dog..."
      test_case2=`robot -d ./log -i TC02 tests/cadastro.robot`
      echo "$test_case2"
      option
    ;;
    "5")
      echo "Executando teste para ser um dogwalker..."
      test_case3=`robot -d ./log -i TC03 tests/cadastro.robot`
      echo "$test_case3"
      option
    ;;
    "6")
      echo "Executando o teste de campos obrigatórios..."
      test_case4=`robot -d ./log -i TC04 tests/cadastro.robot`
      echo "$test_case4"
      option
    ;;
    "7")
      echo "Executando o teste sem o nome completo..."
      test_case5=`robot -d ./log -i TC05 tests/cadastro.robot`
      echo "$test_case5"
      option
    ;;
    "8")
      echo "Executando o teste sem o email..."
      test_case6=`robot -d ./log -i TC06 tests/cadastro.robot`
      echo "$test_case6"
      option
    ;;
    "9")
      echo "Executando o teste sem o cpf..."
      test_case7=`robot -d ./log -i TC07 tests/cadastro.robot`
      echo "$test_case7"
      option
    ;;
    "10")
      echo "Executando o teste sem o cep..."
      test_case8=`robot -d ./log -i TC08 tests/cadastro.robot`
      echo "$test_case8"
      option
    ;;
    "11")
      echo "Executando o teste com número incorreto..."
      test_case9=`robot -d ./log -i TC09 tests/cadastro.robot`
      echo "$test_case9"
      option
    ;;
    "12")
      echo "Executando o teste sem documento..."
      test_case10=`robot -d ./log -i TC10 tests/cadastro.robot`
      echo "$test_case10"
      option
    ;;
    "13")
      echo "Saindo do menu de execução..."
      exit 0
  esac
}
option