*** Settings ***
Library     Collections 
Library     RequestsLibrary
Library     OperatingSystem

*** Variables ***
${base_url}     https://testeapiqa.azurewebsites.net/api/TodoItems

*** Keywords ***

Lista informações cadastradas
    [Arguments]     ${code}
    &{headers}=      Create Dictinary        Content-Type=application/json
    ${resp}=        Get     ${base_url}

    Should Be Equal As Strings     ${reps.status_code}     ${code} 

    [return]        ${resp}

    Enviar Dados para Cadastro
        [Arguments]     ${json}     ${code}

        &{headers}=      Create Dictinary        Content-Type=application/json
        ${resp}=        Post        ${base_url}     data=${json}        expected_status=${code}       

        Should Be Equal As Strings      ${resp.status_code}     ${code} 

        [return]        ${resp}