*** Settings ***
Resource    ../../pages/cadastros/cadastros_page.robot
Resource    ../../variables/cadastros/cadastros_variables.robot
Resource    ../../resources/common/common.robot
Resource    ../../steps/hub/hub_steps.robot
Resource    ../../steps/login/login_steps.robot

*** Keywords ***

# ── Setup / Teardown ──────────────────────────────────────────────────────────

Acessar Tela De Cadastros
    Acessar Hub De Serviços
    Navegar Para Tela De Cadastros

Restaurar Estado Inicial Do Sistema
    Acessar Tela De Cadastros
    Encerrar Sessão De Teste

# ── Navegação ─────────────────────────────────────────────────────────────────

Validar Título Da Tela De Cadastros
    Verificar Título Da Página Cadastros

Acessar Aba Setor
    Clicar Na Aba Setor

Acessar Aba Sub-Setor
    Clicar Na Aba Sub-Setor

Acessar Aba Fornecedor
    Clicar Na Aba Fornecedor

Acessar Aba Alérgicos
    Clicar Na Aba Alérgicos

Acessar Aba Tabela Nutricional
    Clicar Na Aba Tabela Nutricional

Acessar Aba Operador
    Clicar Na Aba Operador

Acessar Aba Imagem
    Clicar Na Aba Imagem

Validar Abas De Cadastro Visíveis
    Verificar Aba Visível    ${ABA_SETOR}
    Verificar Aba Visível    ${ABA_SUBSETOR}
    Verificar Aba Visível    ${ABA_FORNECEDOR}
    Verificar Aba Visível    ${ABA_ALERGICOS}
    Verificar Aba Visível    ${ABA_TABELA_NUTRICIONAL}
    Verificar Aba Visível    ${ABA_OPERADOR}
    Verificar Aba Visível    ${ABA_IMAGEM}

# ── Setor – Cadastro ──────────────────────────────────────────────────────────

Iniciar Cadastro De Novo Setor
    Clicar Em Novo

Validar Formulário De Adição De Setor
    Verificar Formulário De Novo Setor

Informar Número Do Setor
    Preencher Número Do Setor    ${NUMERO_SETOR_VALIDO}

Informar Nome Do Setor
    Preencher Nome Do Setor    ${NOME_SETOR_VALIDO}

Salvar Cadastro De Setor
    Clicar Em Salvar

Aguardar Confirmação Do Cadastro De Setor
    Aguardar Formulário De Setor Fechar

Cancelar Cadastro De Setor
    Clicar Em Cancelar

Validar Formulário De Setor Permanece Aberto
    Verificar Formulário De Setor Ainda Aberto

Validar Mensagem De Setor Já Cadastrado
    Verificar Mensagem De Setor Duplicado

Garantir Setor Cadastrado
    ${visivel}=    Run Keyword And Return Status
    ...    Wait Until Page Contains Element    ${SETOR_NA_LISTA}    timeout=5s
    IF    not ${visivel}
        Iniciar Cadastro De Novo Setor
        Informar Número Do Setor
        Informar Nome Do Setor
        Salvar Cadastro De Setor
        Aguardar Confirmação Do Cadastro De Setor
    END

Excluir Setor Se Existir
    ${existe}=    Run Keyword And Return Status
    ...    Element Should Be Visible    ${SETOR_NA_LISTA}
    IF    ${existe}
        Iniciar Exclusão Do Setor
        Confirmar Exclusão Do Setor
    END

# ── Setor – Edição ────────────────────────────────────────────────────────────

Iniciar Edição Do Setor
    Clicar Em Editar

Validar Formulário De Edição De Setor Exibido
    Verificar Formulário De Edição De Setor

Alterar Nome Do Setor
    Preencher Nome Do Setor    ${NOME_SETOR_EDITADO}

Salvar Edição Do Setor
    Clicar Em Salvar

Cancelar Edição Do Setor
    Clicar Em Cancelar

# ── Setor – Exclusão ──────────────────────────────────────────────────────────

Iniciar Exclusão Do Setor
    Clicar Em Excluir

Confirmar Exclusão Do Setor
    Confirmar Exclusão

Cancelar Exclusão Do Setor
    Cancelar Exclusão

Validar Setor Removido Da Lista
    Verificar Setor Removido Da Lista

Validar Setor Ainda Na Lista
    Element Should Be Visible    ${SETOR_NA_LISTA}

# ── Sub-Setor – Cadastro ──────────────────────────────────────────────────────

Iniciar Cadastro De Novo Sub-Setor
    Clicar Em Novo

Validar Formulário De Adição De Sub-Setor
    Verificar Formulário De Novo Sub-Setor

Informar Nome Do Sub-Setor
    Preencher Nome Do Sub-Setor    ${NOME_SUBSETOR_VALIDO}

Salvar Cadastro De Sub-Setor
    Clicar Em Salvar

Cancelar Cadastro De Sub-Setor
    Clicar Em Cancelar

# ── Fornecedor – Cadastro ─────────────────────────────────────────────────────

Iniciar Cadastro De Novo Fornecedor
    Clicar Em Novo

Validar Formulário De Adição De Fornecedor
    Verificar Formulário De Novo Fornecedor

Informar Nome Do Fornecedor
    Preencher Nome Do Fornecedor    ${NOME_FORNECEDOR_VALIDO}

Salvar Cadastro De Fornecedor
    Clicar Em Salvar

Cancelar Cadastro De Fornecedor
    Clicar Em Cancelar

# ── Alérgicos – Cadastro ──────────────────────────────────────────────────────

Iniciar Cadastro De Novo Alérgico
    Clicar Em Novo

Validar Formulário De Adição De Alérgico
    Verificar Formulário De Novo Alérgico

Informar Nome Do Alérgico
    Preencher Nome Do Alérgico    ${NOME_ALERGICO_VALIDO}

Salvar Cadastro De Alérgico
    Clicar Em Salvar

Cancelar Cadastro De Alérgico
    Clicar Em Cancelar

# ── Operador – Cadastro ───────────────────────────────────────────────────────

Iniciar Cadastro De Novo Operador
    Clicar Em Novo

Validar Formulário De Adição De Operador
    Verificar Formulário De Novo Operador

Informar Nome Do Operador
    Preencher Nome Do Operador    ${NOME_OPERADOR_VALIDO}

Informar Senha Do Operador
    Preencher Senha Do Operador    ${SENHA_OPERADOR_VALIDO}

Salvar Cadastro De Operador
    Clicar Em Salvar

Cancelar Cadastro De Operador
    Clicar Em Cancelar

Iniciar Exclusão Do Operador
    Clicar Em Excluir

Confirmar Exclusão Do Operador
    Confirmar Exclusão

Cancelar Exclusão Do Operador
    Cancelar Exclusão

Validar Operador Removido Da Lista
    Verificar Operador Removido Da Lista
