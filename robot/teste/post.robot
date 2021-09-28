*** Settings ***
src     ../src/services.robot
*** Test Cases ***

#Realizar cadastro enviando informações válida
Enviar Dados para Cadastro Válido

    [Template]      Enviar Dados para Cadastro
    {"id": 100, "name": "Teste 100","isCompleted": true}     201
    {"id": 101, "name": "Teste 101","isCompleted": true}     201
    {"id": 102, "name": "Teste 102","isCompleted": true}     201