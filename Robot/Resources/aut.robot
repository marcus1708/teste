*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://localhost:8000/index.html
${file}    /home/marcus/Área de trabalho/Robot/modelo.txt
${chrome options}    --no-sandbox --disable-dev-shm-usage --headless

*** Keywords ***

Abrir o Navegador
    Open Browser    ${url}    chrome    options=add_argument(${chrome options})
    Maximize Browser Window

Fechar o Navegador 
    Close Browser

Preenche os Campos de Texto
    Go To    ${url}
    Input Text    id=Name    Fulano
    Input Text    id=Job     QA
    Input Text    id=email    qa@io.com
    Input Text    id=phone    11-999999999

Seleciona Carro no ListBox
    Go To    ${url}
    Select From List By Value    id=product    carro
    Sleep    5

Seleciona RH no Radio Button
    Go To    ${url}
    Select Radio Button    area    rh
    Sleep    3

Seleciona Email no CheckBox
    Go To    ${url}
    Select Checkbox    id=email-checkbox
    Checkbox Should Be Selected    id=email-checkbox
    Sleep    3

Preenche a Caixa de Texto com um texto longo
    Go To    ${url}
    Input Text    id=text-area    qqqqqqqqqqqqqqqqqqqqqqqqqqtttttttttttttttttttttttttttuuuuuuuuuuuuuuuuuuuuuuuuuuffffffffffffffffffffffffffhhhhhhhhhhhhhhhhhhhhhhh
    Sleep    3

Anexar Arquivo
    Choose File    id=file-upload    ${file}
    Sleep    5
