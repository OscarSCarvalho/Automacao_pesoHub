*** Settings ***
Resource        ../../steps/balancas/balancas_steps.robot
Test Setup      Acessar Tela De Balanças
Test Teardown   Encerrar Sessão De Teste

*** Test Cases ***

Verificar Formulário De Edição De Balança
    [Tags]    ativo
    Iniciar Edição Da Balança
    Validar Formulário De Edição Exibido

Editar Nome Da Balança E Salvar
    [Tags]    ativo
    Iniciar Edição Da Balança
    Alterar Nome Da Balança
    Salvar Edição Da Balança
    Validar Título Da Tela De Balanças

Cancelar Edição Da Balança
    [Tags]    ativo
    Iniciar Edição Da Balança
    Alterar Nome Da Balança
    Cancelar Edição Da Balança
    Validar Título Da Tela De Balanças

Editar Endereço IP Da Balança E Salvar
    [Tags]    pendente
    Iniciar Edição Da Balança
    Alterar Endereço IP Da Balança
    Salvar Edição Da Balança
    Validar Edição Realizada Com Sucesso

Editar Porta Da Balança E Salvar
    [Tags]    pendente
    Iniciar Edição Da Balança
    Alterar Porta Da Balança
    Salvar Edição Da Balança
    Validar Edição Realizada Com Sucesso
