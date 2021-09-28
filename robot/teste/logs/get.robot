*** Settings ***
src     ../src/services.robot
*** Test Cases ***

#Lista todas as informações cadastradas.
Apresenta lista com todas as informações cadastradas

    ${resp}=        Lista informações cadastradas       200

    Log$        {resp.text}