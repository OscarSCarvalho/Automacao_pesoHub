*** Settings ***
Resource        ../../steps/hub/hub_steps.robot
Test Setup      Acessar Hub De Serviços
Test Teardown   Encerrar Sessão De Teste

*** Test Cases ***

Verificar Nome Da Empresa Exibido No Hub
    [Tags]    ativo
    Validar Nome Da Empresa No Hub

Verificar Botão Dashboard Disponível No Hub
    [Tags]    ativo
    Validar Botão Dashboard Visível

Verificar Dados Do Dashboard
    [Tags]    ativo
    Acessar Dashboard
    Validar Balanças Ativas No Dashboard
    Validar Produtos PLU No Dashboard
    Validar Status Da Balança No Dashboard
    Validar Status Online Ou Offline Das Balanças
