*** Settings ***
Resource        ../../steps/balancas/balancas_steps.robot
Suite Teardown  Restaurar Estado Inicial Do Sistema
Test Setup      Acessar Tela De Balanças
Test Teardown   Encerrar Sessão De Teste

*** Test Cases ***

Verificar Acesso À Tela De Balanças
    [Tags]    ativo
    Validar Título Da Tela De Balanças

Verificar Formulário De Adição De Balança
    [Tags]    ativo
    Iniciar Cadastro De Nova Balança
    Validar Formulário De Adição De Balança

Preencher Formulário E Cancelar Cadastro De Balança
    [Tags]    ativo
    Iniciar Cadastro De Nova Balança
    Informar Nome Da Balança
    Informar Endereço IP Da Balança
    Informar Porta Da Balança
    Cancelar Cadastro De Balança
    Validar Título Da Tela De Balanças

Excluir Balança Existente E Recadastrar Com Mesmo IP
    [Tags]    ativo
    Excluir Balança Se Existir
    Iniciar Cadastro De Nova Balança
    Informar Nome Da Balança
    Informar Endereço IP Da Balança
    Informar Porta Da Balança
    Salvar Cadastro De Balança
    Aguardar Confirmação Do Cadastro

Cadastrar Balança Com IP Já Existente
    [Tags]    ativo
    Garantir Balança Cadastrada
    Iniciar Cadastro De Nova Balança
    Informar Nome Da Balança
    Informar Endereço IP Da Balança
    Informar Porta Da Balança
    Salvar Cadastro De Balança
    Validar Mensagem De IP Já Cadastrado

Cadastrar Balança Com Campos Vazios
    [Tags]    ativo
    Iniciar Cadastro De Nova Balança
    Salvar Cadastro De Balança
    Validar Formulário Permanece Aberto

Editar Balança Cadastrada
    [Tags]    ativo
    Iniciar Edição Da Balança
    Salvar Edição Da Balança
    Validar Título Da Tela De Balanças

Excluir Balança Cadastrada
    [Tags]    ativo
    Iniciar Exclusão Da Balança
    Validar Balança Removida Da Lista
