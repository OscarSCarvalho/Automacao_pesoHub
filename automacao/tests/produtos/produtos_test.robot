*** Settings ***
Resource        ../../steps/produtos/produtos_steps.robot
Suite Teardown  Restaurar Estado Inicial Do Sistema
Test Setup      Acessar Tela De Produtos
Test Teardown   Encerrar Sessão De Teste

*** Test Cases ***

# ── CT-01: Listagem ───────────────────────────────────────────────────────────

Verificar Acesso À Tela De Produtos
    [Tags]    ativo
    Validar Título Da Tela De Produtos

Verificar Listagem De Produtos Exibida
    [Tags]    ativo
    Validar Listagem De Produtos Exibida

# ── CT-02 / CT-05: Busca ─────────────────────────────────────────────────────

Buscar Produto Por Código Existente
    [Tags]    ativo
    Garantir Produto Cadastrado
    Buscar Produto Por Código
    Validar Produto Encontrado

Buscar Com Termo Inexistente
    [Tags]    ativo
    Buscar Produto Com Termo Inexistente
    Validar Resultado De Busca Vazio

Limpar Busca Retorna Lista Completa
    [Tags]    ativo
    Buscar Produto Com Termo Inexistente
    Validar Resultado De Busca Vazio
    Limpar Busca
    Validar Listagem De Produtos Exibida

# ── CT-10 / CT-11 / CT-12: Filtros ───────────────────────────────────────────

Filtrar Somente Produtos Ativos
    [Tags]    ativo
    Aplicar Filtro Somente Ativos
    Validar Listagem De Produtos Exibida

Filtrar Somente Produtos Inativos
    [Tags]    pendente
    Aplicar Filtro Somente Inativos
    Validar Resultado De Busca Vazio

Remover Filtro E Exibir Todos Os Produtos
    [Tags]    ativo
    Aplicar Filtro Somente Ativos
    Remover Filtro Aplicado
    Validar Listagem De Produtos Exibida

# ── Formulário de cadastro ────────────────────────────────────────────────────

Verificar Formulário De Adição De Produto
    [Tags]    ativo
    Iniciar Cadastro De Novo Produto
    Validar Formulário De Adição De Produto

# ── CT-18: Campos obrigatórios vazios ────────────────────────────────────────

Cadastrar Produto Com Campos Obrigatórios Vazios
    [Tags]    ativo
    Iniciar Cadastro De Novo Produto
    Salvar Cadastro De Produto
    Validar Formulário Permanece Aberto

# ── CT-19: Cadastro válido ────────────────────────────────────────────────────

Excluir Produto Existente E Recadastrar
    [Tags]    ativo
    Excluir Produto Se Existir
    Iniciar Cadastro De Novo Produto
    Informar Código Do Produto
    Informar EAN13 Do Produto
    Informar Nome Do Produto
    Informar Preço Unitário Do Produto
    Salvar Cadastro De Produto
    Aguardar Confirmação Do Cadastro

Cadastrar Produto Com Código Já Existente
    [Tags]    ativo
    Garantir Produto Cadastrado
    Iniciar Cadastro De Novo Produto
    Informar Código Do Produto
    Informar Nome Do Produto
    Informar Preço Unitário Do Produto
    Salvar Cadastro De Produto

Cancelar Cadastro De Produto
    [Tags]    ativo
    Iniciar Cadastro De Novo Produto
    Informar Código Do Produto
    Informar Nome Do Produto
    Cancelar Cadastro De Produto
    Validar Título Da Tela De Produtos

# ── CT-55 / CT-56 / CT-58: Edição ────────────────────────────────────────────

Verificar Formulário De Edição De Produto
    [Tags]    ativo
    Garantir Produto Cadastrado
    Iniciar Edição Do Produto
    Validar Formulário De Edição Exibido

Editar Nome Do Produto E Salvar
    [Tags]    ativo
    Garantir Produto Cadastrado
    Iniciar Edição Do Produto
    Alterar Nome Do Produto
    Salvar Edição Do Produto
    Aguardar Confirmação Da Edição
    Validar Título Da Tela De Produtos

Cancelar Edição Do Produto
    [Tags]    ativo
    Garantir Produto Cadastrado
    Iniciar Edição Do Produto
    Alterar Nome Do Produto
    Cancelar Cadastro De Produto
    Validar Título Da Tela De Produtos

# ── CT-61 / CT-62: Exclusão ──────────────────────────────────────────────────

Cancelar Exclusão De Produto
    [Tags]    ativo
    Garantir Produto Cadastrado
    Iniciar Exclusão Do Produto
    Cancelar Exclusão
    Validar Produto Ainda Na Lista

Excluir Produto Cadastrado
    [Tags]    ativo
    Garantir Produto Cadastrado
    Iniciar Exclusão Do Produto
    Confirmar Exclusão
    Validar Produto Removido Da Lista
