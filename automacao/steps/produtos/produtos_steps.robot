*** Settings ***
Resource    ../../pages/produtos/produtos_page.robot
Resource    ../../variables/produtos/produtos_variables.robot
Resource    ../../resources/common/common.robot
Resource    ../../steps/hub/hub_steps.robot
Resource    ../../steps/login/login_steps.robot

*** Keywords ***

# ── Setup / Teardown ──────────────────────────────────────────────────────────

Acessar Tela De Produtos
    Acessar Hub De Serviços
    Navegar Para Tela De Produtos

Restaurar Estado Inicial Do Sistema
    Acessar Tela De Produtos
    Garantir Produto Cadastrado
    Encerrar Sessão De Teste

# ── Listagem ──────────────────────────────────────────────────────────────────

Validar Título Da Tela De Produtos
    Verificar Título Da Página Produtos

Validar Listagem De Produtos Exibida
    Verificar Tabela De Produtos Exibida

# ── Busca ─────────────────────────────────────────────────────────────────────

Buscar Produto Por Código
    Preencher Campo De Busca    ${CODIGO_PRODUTO_BUSCA}

Buscar Produto Com Termo Inexistente
    Preencher Campo De Busca    ${TERMO_BUSCA_INEXISTENTE}

Limpar Busca
    Limpar Campo De Busca

Validar Produto Encontrado
    Verificar Produto Encontrado Na Busca

Validar Resultado De Busca Vazio
    Verificar Resultado De Busca Vazio

# ── Filtros ───────────────────────────────────────────────────────────────────

Aplicar Filtro Somente Ativos
    Abrir Dropdown De Filtros
    Selecionar Filtro Somente Ativos

Aplicar Filtro Somente Inativos
    Abrir Dropdown De Filtros
    Selecionar Filtro Somente Inativos

Remover Filtro Aplicado
    Abrir Dropdown De Filtros
    Selecionar Filtro Todos

# ── Cadastro ──────────────────────────────────────────────────────────────────

Iniciar Cadastro De Novo Produto
    Clicar Em Novo Produto

Validar Formulário De Adição De Produto
    Verificar Formulário Adicionar Produto

Informar Código Do Produto
    Preencher Código Do Produto    ${CODIGO_PRODUTO_VALIDO}

Informar EAN13 Do Produto
    Preencher EAN13 Do Produto    ${EAN13_VALIDO}

Informar Nome Do Produto
    Preencher Nome Do Produto    ${NOME_PRODUTO_VALIDO}

Informar Preço Unitário Do Produto
    Preencher Preço Unitário Do Produto    ${PRECO_UNITARIO_VALIDO}

Salvar Cadastro De Produto
    Clicar Em Salvar Produto

Aguardar Confirmação Do Cadastro
    Aguardar Formulário De Cadastro Fechar

Cancelar Cadastro De Produto
    Clicar Em Cancelar Cadastro

Validar Formulário Permanece Aberto
    Verificar Formulário De Cadastro Ainda Aberto

Garantir Produto Cadastrado
    ${visivel}=    Run Keyword And Return Status
    ...    Wait Until Page Contains Element    ${PRODUTO_NA_TELA}    timeout=15s
    IF    not ${visivel}
        Iniciar Cadastro De Novo Produto
        Informar Código Do Produto
        Informar EAN13 Do Produto
        Informar Nome Do Produto
        Informar Preço Unitário Do Produto
        Salvar Cadastro De Produto
        Wait Until Page Contains Element    ${PRODUTO_NA_TELA}    timeout=${TIMEOUT}
    END

Excluir Produto Se Existir
    ${existe}=    Run Keyword And Return Status
    ...    Element Should Be Visible    ${BTN_EXCLUIR_PRODUTO}
    IF    ${existe}
        Clicar Em Excluir Produto
        Confirmar Exclusão Do Produto
        Verificar Produto Removido Da Lista
    END

# ── Edição ────────────────────────────────────────────────────────────────────

Iniciar Edição Do Produto
    Clicar Em Editar Produto

Validar Formulário De Edição Exibido
    Verificar Formulário De Edição Exibido

Alterar Nome Do Produto
    Editar Nome Do Produto    ${NOME_PRODUTO_EDITADO}

Salvar Edição Do Produto
    Clicar Em Salvar Edição

Aguardar Confirmação Da Edição
    Aguardar Formulário De Edição Fechar

# ── Exclusão ──────────────────────────────────────────────────────────────────

Iniciar Exclusão Do Produto
    Clicar Em Excluir Produto

Confirmar Exclusão
    Confirmar Exclusão Do Produto

Cancelar Exclusão
    Cancelar Exclusão Do Produto

Validar Produto Removido Da Lista
    Verificar Produto Removido Da Lista

Validar Produto Ainda Na Lista
    Verificar Produto Ainda Na Lista

# ── EAN-13: Duplicado ─────────────────────────────────────────────────────────

Informar Código Produto Auxiliar
    Preencher Código Do Produto    ${CODIGO_PRODUTO_AUX}

Informar EAN13 Duplicado
    Preencher EAN13 Do Produto    ${EAN13_VALIDO}

Informar Nome Produto Auxiliar
    Preencher Nome Do Produto    ${NOME_PRODUTO_AUX}

Validar Rejeição De EAN13 Duplicado
    Verificar Formulário De Cadastro Ainda Aberto

# ── EAN-13: Truncagem ─────────────────────────────────────────────────────────

Preencher EAN13 Acima Do Limite
    Preencher EAN13 Do Produto    ${EAN_ACIMA_LIMITE}

Validar EAN13 Truncado Para 13 Caracteres
    Verificar Campo EAN13 Truncado

# ── Preço: Validações ─────────────────────────────────────────────────────────

Tentar Preencher Preço Com Texto Inválido
    Tentar Preencher Preço Com Texto    ${PRECO_TEXTO_INVALIDO}

Validar Campo Preço Não Aceita Texto
    Verificar Campo Preço Vazio

Preencher Preço Negativo
    Preencher Preço Unitário Do Produto    ${PRECO_NEGATIVO}

Validar Rejeição De Preço Negativo
    Verificar Formulário De Cadastro Ainda Aberto
