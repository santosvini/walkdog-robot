#!/bin/bash
echo "Selecione uma opção:"
echo "0 - Regressão"
echo "1 - Test Case - Home"
echo "2 - Test Case - Retorno a Home"
echo "3 - Test Case - Cuidar"
echo "4 - Test Case - Adestrar"
echo "5 - Test Case - Ser um Dog Walker"
echo "6 - Test Case - Campos Obrigatórios"
echo "7 - Test Case - Cadastro sem nome"
echo "8 - Test Case - Cadastro sem email"
echo "9 - Test Case - Cadastro sem cpf"
echo "10 - Test Case - Cadastro sem cep"
echo "11 - Test Case - Numero Incorreto"
echo "12 - Test Case - Sem documento"

read opcao;
  case $opcao in
  "0")
  regression=`robot -d ./log tests/`
  echo "$regression"
  echo "Excutando testes de regressão..."
  ;;
  "1")
   test_home=`robot -d ./log tests/home.robot`
   echo "$test_home"
   echo "Excutando o teste da home..."
   ;;
  "2")
   test_case0=`robot -d ./log -i TC00 tests/cadastro.robot`
   echo "$test_case0"
   echo "Excutando o teste de retorno a home page..."
   ;;
  "3")
   test_case1=`robot -d ./log -i TC01 tests/cadastro.robot`
   echo "$test_case1"
   echo "Excutando o teste para cuidar de um dog..."
   ;;
   "4")
   test_case2=`robot -d ./log -i TC02 tests/cadastro.robot`
   echo "$test_case2"
   echo "Excutando o teste para adestrar um dog..."
   ;;
   "5")
   test_case3=`robot -d ./log -i TC03 tests/cadastro.robot`
   echo "$test_case3"
   echo "Executando teste para ser um dogwalker..."
   ;;
   "6")
   test_case4=`robot -d ./log -i TC04 tests/cadastro.robot`
   echo "$test_case4"
   echo "Executando o teste de campos obrigatórios..."
   ;;
   "7")
   test_case5=`robot -d ./log -i TC05 tests/cadastro.robot`
   echo "$test_case5"
   echo "Executando o teste sem o nome completo..."
   ;;
   "8")
   test_case6=`robot -d ./log -i TC06 tests/cadastro.robot`
   echo "$test_case6"
   echo "Executando o teste sem o email..."
   ;;
   "9")
   test_case7=`robot -d ./log -i TC07 tests/cadastro.robot`
   echo "$test_case7"
   echo "Executando o teste sem o cpf..."
   ;;
   "10")
   test_case8=`robot -d ./log -i TC08 tests/cadastro.robot`
   echo "$test_case8"
   echo "Executando o teste sem o cep..."
   ;;
   "11")
   test_case9=`robot -d ./log -i TC09 tests/cadastro.robot`
   echo "$test_case9"
   echo "Executando o teste com número incorreto..."
   ;;
   "12")
   test_case10=`robot -d ./log -i TC10 tests/cadastro.robot`
   echo "$test_case10"
   echo "Executando o teste sem documento..."

esac