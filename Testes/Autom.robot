*** Settings ***
Resource    ../Resources/aut.robot

Test Setup       Abrir o Navegador
Test Teardown    Fechar o Navegador

*** Test Cases ***
01 - Teste Preenche os Campos de Texto
    Preenche os Campos de Texto
02 - Teste Seleciona Carro no ListBox
    Seleciona Carro no ListBox
03 - Teste Seleciona Radio Button
    Seleciona RH no Radio Button
04 - Teste Seleciona Email no Checkbox
    Seleciona Email no CheckBox
05 - Teste Preenche com Texto longo
    Preenche a Caixa de Texto com um texto longo
06 - Teste Anexar Arquivo via txt
    Anexar Arquivo
    