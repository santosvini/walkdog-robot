
# Walkdog com Robot Framework

Projeto de automação com ```Robot Framework``` com utilização de IA ```Chat-GPT```.

Foram criados 10 testes de cadastros, 1 teste da home,
e 1 teste de regressão com montagem de reports de forma automatizada através de um sistema ```shell```.

## Instalação

*Instalando o Python*

[Python](https://python.org.br/instalacao-windows/)

*Instalando o Pip*

```bash
  pip -m pip install --upgrade pip
  pip -m pip --version
```

*Diretório do projeto*

```bash
  mkdir my-project
  cd my-project
```

*Instalando as tecnologias e libs necessárias do projeto*

[Instalação do Robot e SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/#installation), siga os comandos e após, caso seja do interesse, instale a lib faker

```bash
  pip install robotframework-faker
```

Para validar todas as instalações, 
```bash
  pip list / pip freeze
```
Criar req.txt com as 

## Stacks utilizada

**Libraries**: Builtin, Faker, SeleniumLibrary

**Automação:** Robot Framework

**Shell**: Shell Script

**IA:** Chat-GPT

## Rodando localmente

Escolhe a opção desejada, espere a execução, após a mesma, retornará para o menu principal.

![Screenshot](img\shell.png)

Clone o projeto:

```bash
  git clone https://github.com/santosvini/walkdog-robot.git
```

Entre no diretório do projeto

```bash
  cd walkdog-robot
```
Para rodar os testes, rode o seguinte comando

```bash
  ./run.sh
```

## Resultados

Nos testes de regressão, há o comando para gerar o report do allure, mas o mesmo pode ser gerado com o comando abaixo:

```bash 
allure serve
```

Aqui o report que o robot monta ao finalizar as execuções

![Report](img\report.png)

## Feedback

Se você tiver algum feedback, por favor nos deixe saber por meio de [issues](https://github.com/santosvini/walkdog-robot/issues), neste repositório

## Autor

- [@santosvini](https://github.com/santosvini)