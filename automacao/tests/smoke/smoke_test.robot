*** Settings ***
Resource    ../../resources/common/common.robot
Test Teardown    Fechar Navegador

*** Test Cases ***

Verificar Abertura Do Navegador
    Abrir Navegador
    Go To    https://www.google.com
    Title Should Be    Google
