*** Settings ***
Resource        ../../steps/cadastros/cadastros_steps.robot
Suite Teardown  Restaurar Estado Inicial Do Sistema
Test Setup      Acessar Tela De Cadastros
Test Teardown   Encerrar Sessão De Teste

*** Test Cases ***

# ── Navegação ─────────────────────────────────────────────────────────────────

Verificar Acesso À Tela De Cadastros
    [Tags]    ativo
    Validar Título Da Tela De Cadastros

Verificar Abas Disponíveis Na Tela De Cadastros
    [Tags]    ativo
    Validar Abas De Cadastro Visíveis

Verificar Navegação Para Aba Setor
    [Tags]    ativo
    Acessar Aba Setor
    Validar Título Da Tela De Cadastros

Verificar Navegação Para Aba Sub-Setor
    [Tags]    ativo
    Acessar Aba Sub-Setor
    Validar Título Da Tela De Cadastros

Verificar Navegação Para Aba Fornecedor
    [Tags]    ativo
    Acessar Aba Fornecedor
    Validar Título Da Tela De Cadastros

Verificar Navegação Para Aba Alérgicos
    [Tags]    ativo
    Acessar Aba Alérgicos
    Validar Título Da Tela De Cadastros

Verificar Navegação Para Aba Tabela Nutricional
    [Tags]    ativo
    Acessar Aba Tabela Nutricional
    Validar Título Da Tela De Cadastros

Verificar Navegação Para Aba Operador
    [Tags]    ativo
    Acessar Aba Operador
    Validar Título Da Tela De Cadastros

Verificar Navegação Para Aba Imagem
    [Tags]    ativo
    Acessar Aba Imagem
    Validar Título Da Tela De Cadastros

# ── Setor – Formulário ────────────────────────────────────────────────────────

Verificar Formulário De Adição De Setor
    [Tags]    ativo
    Acessar Aba Setor
    Iniciar Cadastro De Novo Setor
    Validar Formulário De Adição De Setor

# ── Setor – Cadastro ──────────────────────────────────────────────────────────

Cadastrar Setor Com Campos Vazios
    [Tags]    ativo
    Acessar Aba Setor
    Iniciar Cadastro De Novo Setor
    Salvar Cadastro De Setor
    Validar Formulário De Setor Permanece Aberto

Excluir Setor Existente E Recadastrar
    [Tags]    ativo
    Acessar Aba Setor
    Excluir Setor Se Existir
    Iniciar Cadastro De Novo Setor
    Informar Número Do Setor
    Informar Nome Do Setor
    Salvar Cadastro De Setor
    Aguardar Confirmação Do Cadastro De Setor

Cadastrar Setor Com Nome Já Existente
    [Tags]    ativo
    Acessar Aba Setor
    Garantir Setor Cadastrado
    Iniciar Cadastro De Novo Setor
    Informar Número Do Setor
    Informar Nome Do Setor
    Salvar Cadastro De Setor
    Validar Mensagem De Setor Já Cadastrado

Cancelar Cadastro De Setor
    [Tags]    ativo
    Acessar Aba Setor
    Iniciar Cadastro De Novo Setor
    Informar Número Do Setor
    Informar Nome Do Setor
    Cancelar Cadastro De Setor
    Validar Título Da Tela De Cadastros

# ── Setor – Edição ────────────────────────────────────────────────────────────

Verificar Formulário De Edição De Setor
    [Tags]    ativo
    Acessar Aba Setor
    Garantir Setor Cadastrado
    Iniciar Edição Do Setor
    Validar Formulário De Edição De Setor Exibido

Editar Nome Do Setor E Salvar
    [Tags]    ativo
    Acessar Aba Setor
    Garantir Setor Cadastrado
    Iniciar Edição Do Setor
    Alterar Nome Do Setor
    Salvar Edição Do Setor
    Validar Título Da Tela De Cadastros

Cancelar Edição Do Setor
    [Tags]    ativo
    Acessar Aba Setor
    Garantir Setor Cadastrado
    Iniciar Edição Do Setor
    Alterar Nome Do Setor
    Cancelar Edição Do Setor
    Validar Título Da Tela De Cadastros

# ── Setor – Exclusão ──────────────────────────────────────────────────────────

Cancelar Exclusão De Setor
    [Tags]    ativo
    Acessar Aba Setor
    Garantir Setor Cadastrado
    Iniciar Exclusão Do Setor
    Cancelar Exclusão Do Setor
    Validar Setor Ainda Na Lista

Excluir Setor Cadastrado
    [Tags]    ativo
    Acessar Aba Setor
    Garantir Setor Cadastrado
    Iniciar Exclusão Do Setor
    Confirmar Exclusão Do Setor
    Validar Setor Removido Da Lista

# ── Sub-Setor ─────────────────────────────────────────────────────────────────

Verificar Formulário De Adição De Sub-Setor
    [Tags]    pendente
    Acessar Aba Sub-Setor
    Iniciar Cadastro De Novo Sub-Setor
    Validar Formulário De Adição De Sub-Setor

Cadastrar Sub-Setor Com Campos Vazios
    [Tags]    pendente
    Acessar Aba Sub-Setor
    Iniciar Cadastro De Novo Sub-Setor
    Salvar Cadastro De Sub-Setor

Cadastrar Sub-Setor Válido
    [Tags]    pendente
    Acessar Aba Sub-Setor
    Iniciar Cadastro De Novo Sub-Setor
    Informar Nome Do Sub-Setor
    Salvar Cadastro De Sub-Setor

Cancelar Cadastro De Sub-Setor
    [Tags]    pendente
    Acessar Aba Sub-Setor
    Iniciar Cadastro De Novo Sub-Setor
    Informar Nome Do Sub-Setor
    Cancelar Cadastro De Sub-Setor
    Validar Título Da Tela De Cadastros

# ── Fornecedor ────────────────────────────────────────────────────────────────

Verificar Formulário De Adição De Fornecedor
    [Tags]    pendente
    Acessar Aba Fornecedor
    Iniciar Cadastro De Novo Fornecedor
    Validar Formulário De Adição De Fornecedor

Cadastrar Fornecedor Com Campos Vazios
    [Tags]    pendente
    Acessar Aba Fornecedor
    Iniciar Cadastro De Novo Fornecedor
    Salvar Cadastro De Fornecedor

Cadastrar Fornecedor Válido
    [Tags]    pendente
    Acessar Aba Fornecedor
    Iniciar Cadastro De Novo Fornecedor
    Informar Nome Do Fornecedor
    Salvar Cadastro De Fornecedor

Cancelar Cadastro De Fornecedor
    [Tags]    pendente
    Acessar Aba Fornecedor
    Iniciar Cadastro De Novo Fornecedor
    Informar Nome Do Fornecedor
    Cancelar Cadastro De Fornecedor
    Validar Título Da Tela De Cadastros

# ── Alérgicos ─────────────────────────────────────────────────────────────────

Verificar Formulário De Adição De Alérgico
    [Tags]    pendente
    Acessar Aba Alérgicos
    Iniciar Cadastro De Novo Alérgico
    Validar Formulário De Adição De Alérgico

Cadastrar Alérgico Com Campos Vazios
    [Tags]    pendente
    Acessar Aba Alérgicos
    Iniciar Cadastro De Novo Alérgico
    Salvar Cadastro De Alérgico

Cadastrar Alérgico Válido
    [Tags]    pendente
    Acessar Aba Alérgicos
    Iniciar Cadastro De Novo Alérgico
    Informar Nome Do Alérgico
    Salvar Cadastro De Alérgico

Cancelar Cadastro De Alérgico
    [Tags]    pendente
    Acessar Aba Alérgicos
    Iniciar Cadastro De Novo Alérgico
    Informar Nome Do Alérgico
    Cancelar Cadastro De Alérgico
    Validar Título Da Tela De Cadastros

# ── Operador ──────────────────────────────────────────────────────────────────

Verificar Formulário De Adição De Operador
    [Tags]    pendente
    Acessar Aba Operador
    Iniciar Cadastro De Novo Operador
    Validar Formulário De Adição De Operador

Cadastrar Operador Com Campos Vazios
    [Tags]    pendente
    Acessar Aba Operador
    Iniciar Cadastro De Novo Operador
    Salvar Cadastro De Operador

Cadastrar Operador Válido
    [Tags]    pendente
    Acessar Aba Operador
    Iniciar Cadastro De Novo Operador
    Informar Nome Do Operador
    Informar Senha Do Operador
    Salvar Cadastro De Operador

Cancelar Cadastro De Operador
    [Tags]    pendente
    Acessar Aba Operador
    Iniciar Cadastro De Novo Operador
    Informar Nome Do Operador
    Cancelar Cadastro De Operador
    Validar Título Da Tela De Cadastros

Excluir Operador Cadastrado
    [Tags]    pendente
    Acessar Aba Operador
    Iniciar Exclusão Do Operador
    Confirmar Exclusão Do Operador
    Validar Operador Removido Da Lista

Cancelar Exclusão De Operador
    [Tags]    pendente
    Acessar Aba Operador
    Iniciar Exclusão Do Operador
    Cancelar Exclusão Do Operador
