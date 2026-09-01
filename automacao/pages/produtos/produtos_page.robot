*** Settings ***
Library     SeleniumLibrary
Resource    ../../resources/common/common.robot
Resource    ../../variables/produtos/produtos_variables.robot

*** Keywords ***

# ── Navegação ─────────────────────────────────────────────────────────────────

Navegar Para Tela De Produtos
    Aguardar Elemento Visível       ${BTN_MENU_PRODUTOS}
    Click Element                   ${BTN_MENU_PRODUTOS}
    Aguardar Elemento Visível       ${TITULO_PAGINA_PRODUTOS}

# ── Listagem ──────────────────────────────────────────────────────────────────

Verificar Título Da Página Produtos
    Aguardar Elemento Visível       ${TITULO_PAGINA_PRODUTOS}
    Element Should Be Visible       ${TITULO_PAGINA_PRODUTOS}

Verificar Tabela De Produtos Exibida
    Aguardar Elemento Visível       ${TABELA_PRODUTOS}
    Element Should Be Visible       ${TABELA_PRODUTOS}

# ── Busca ─────────────────────────────────────────────────────────────────────

Preencher Campo De Busca
    [Arguments]    ${termo}
    Aguardar Elemento Visível       ${INPUT_BUSCA}
    Clear Element Text              ${INPUT_BUSCA}
    Input Text                      ${INPUT_BUSCA}    ${termo}

Limpar Campo De Busca
    Aguardar Elemento Visível       ${INPUT_BUSCA}
    Clear Element Text              ${INPUT_BUSCA}

Verificar Produto Encontrado Na Busca
    Aguardar Elemento Visível       ${PRODUTO_NA_TELA}
    Element Should Be Visible       ${PRODUTO_NA_TELA}

Verificar Resultado De Busca Vazio
    Aguardar Elemento Visível       ${RESULTADO_BUSCA_VAZIO}
    Element Should Be Visible       ${RESULTADO_BUSCA_VAZIO}

# ── Filtros ───────────────────────────────────────────────────────────────────

Abrir Dropdown De Filtros
    Aguardar Elemento Visível       ${BTN_FILTROS}
    Click Element                   ${BTN_FILTROS}

Selecionar Filtro Somente Ativos
    Aguardar Elemento Visível       ${FILTRO_SOMENTE_ATIVOS}
    Click Element                   ${FILTRO_SOMENTE_ATIVOS}

Selecionar Filtro Somente Inativos
    Aguardar Elemento Visível       ${FILTRO_SOMENTE_INATIVOS}
    Click Element                   ${FILTRO_SOMENTE_INATIVOS}

Selecionar Filtro Todos
    Aguardar Elemento Visível       ${FILTRO_TODOS}
    Click Element                   ${FILTRO_TODOS}

# ── Cadastro ──────────────────────────────────────────────────────────────────

Clicar Em Novo Produto
    Aguardar Elemento Visível       ${BTN_NOVO_PRODUTO}
    Click Element                   ${BTN_NOVO_PRODUTO}

Verificar Formulário Adicionar Produto
    Aguardar Elemento Visível       ${TITULO_FORM_ADICIONAR}
    Element Should Be Visible       ${TITULO_FORM_ADICIONAR}
    Element Should Be Visible       ${INPUT_CODIGO_PRODUTO}
    Element Should Be Visible       ${INPUT_NOME_PRODUTO}

Preencher Código Do Produto
    [Arguments]    ${codigo}
    Aguardar Elemento Visível       ${INPUT_CODIGO_PRODUTO}
    Clear Element Text              ${INPUT_CODIGO_PRODUTO}
    Input Text                      ${INPUT_CODIGO_PRODUTO}    ${codigo}

Preencher EAN13 Do Produto
    [Arguments]    ${ean}
    Aguardar Elemento Visível       ${INPUT_EAN13}
    Clear Element Text              ${INPUT_EAN13}
    Input Text                      ${INPUT_EAN13}    ${ean}

Preencher Nome Do Produto
    [Arguments]    ${nome}
    Aguardar Elemento Visível       ${INPUT_NOME_PRODUTO}
    Clear Element Text              ${INPUT_NOME_PRODUTO}
    Input Text                      ${INPUT_NOME_PRODUTO}    ${nome}

Preencher Preço Unitário Do Produto
    [Arguments]    ${preco}
    Aguardar Elemento Visível       ${INPUT_PRECO_UNITARIO}
    Clear Element Text              ${INPUT_PRECO_UNITARIO}
    Input Text                      ${INPUT_PRECO_UNITARIO}    ${preco}

Clicar Em Salvar Produto
    Aguardar Elemento Clicável      ${BTN_SALVAR_PRODUTO}
    Click Element                   ${BTN_SALVAR_PRODUTO}

Clicar Em Cancelar Cadastro
    Aguardar Elemento Visível       ${BTN_CANCELAR_PRODUTO}
    Click Element                   ${BTN_CANCELAR_PRODUTO}

Verificar Formulário De Cadastro Ainda Aberto
    Element Should Be Visible       ${TITULO_FORM_ADICIONAR}

Aguardar Formulário De Cadastro Fechar
    Wait Until Element Is Not Visible    ${TITULO_FORM_ADICIONAR}    timeout=${TIMEOUT}

# ── Edição ────────────────────────────────────────────────────────────────────

Clicar Em Editar Produto
    Aguardar Elemento Visível       ${BTN_EDITAR_PRODUTO}
    Click Element                   ${BTN_EDITAR_PRODUTO}

Verificar Formulário De Edição Exibido
    Aguardar Elemento Visível       ${TITULO_FORM_EDITAR}
    Element Should Be Visible       ${TITULO_FORM_EDITAR}
    Element Should Be Visible       ${INPUT_CODIGO_PRODUTO}

Editar Nome Do Produto
    [Arguments]    ${nome}
    Aguardar Elemento Visível       ${INPUT_NOME_PRODUTO}
    Clear Element Text              ${INPUT_NOME_PRODUTO}
    Input Text                      ${INPUT_NOME_PRODUTO}    ${nome}

Clicar Em Salvar Edição
    Aguardar Elemento Clicável      ${BTN_SALVAR_EDICAO}
    Click Element                   ${BTN_SALVAR_EDICAO}

Aguardar Formulário De Edição Fechar
    Wait Until Element Is Not Visible    ${TITULO_FORM_EDITAR}    timeout=${TIMEOUT}

# ── Exclusão ──────────────────────────────────────────────────────────────────

Clicar Em Excluir Produto
    Aguardar Elemento Visível       ${BTN_EXCLUIR_PRODUTO}
    Click Element                   ${BTN_EXCLUIR_PRODUTO}

Confirmar Exclusão Do Produto
    Aguardar Elemento Visível       ${BTN_CONFIRMAR_EXCLUSAO}
    Click Element                   ${BTN_CONFIRMAR_EXCLUSAO}

Cancelar Exclusão Do Produto
    Aguardar Elemento Visível       ${BTN_CANCELAR_EXCLUSAO}
    Click Element                   ${BTN_CANCELAR_EXCLUSAO}

Verificar Produto Removido Da Lista
    Sleep    1s
    Page Should Not Contain Element    ${PRODUTO_NA_TELA}

Verificar Produto Ainda Na Lista
    Element Should Be Visible       ${PRODUTO_NA_TELA}
