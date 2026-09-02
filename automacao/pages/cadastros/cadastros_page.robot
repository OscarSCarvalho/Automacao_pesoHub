*** Settings ***
Library     SeleniumLibrary
Resource    ../../resources/common/common.robot
Resource    ../../variables/cadastros/cadastros_variables.robot

*** Keywords ***

# ── Navegação ─────────────────────────────────────────────────────────────────

Navegar Para Tela De Cadastros
    Aguardar Elemento Visível       ${BTN_MENU_CADASTROS}
    Click Element                   ${BTN_MENU_CADASTROS}
    Aguardar Elemento Visível       ${TITULO_PAGINA_CADASTROS}

Verificar Título Da Página Cadastros
    Aguardar Elemento Visível       ${TITULO_PAGINA_CADASTROS}
    Element Should Be Visible       ${TITULO_PAGINA_CADASTROS}

# ── Navegação entre Abas ──────────────────────────────────────────────────────

Clicar Na Aba Setor
    Aguardar Elemento Visível       ${ABA_SETOR}
    Click Element                   ${ABA_SETOR}

Clicar Na Aba Sub-Setor
    Aguardar Elemento Visível       ${ABA_SUBSETOR}
    Click Element                   ${ABA_SUBSETOR}

Clicar Na Aba Fornecedor
    Aguardar Elemento Visível       ${ABA_FORNECEDOR}
    Click Element                   ${ABA_FORNECEDOR}

Clicar Na Aba Alérgicos
    Aguardar Elemento Visível       ${ABA_ALERGICOS}
    Click Element                   ${ABA_ALERGICOS}

Clicar Na Aba Tabela Nutricional
    Aguardar Elemento Visível       ${ABA_TABELA_NUTRICIONAL}
    Click Element                   ${ABA_TABELA_NUTRICIONAL}

Clicar Na Aba Operador
    Aguardar Elemento Visível       ${ABA_OPERADOR}
    Click Element                   ${ABA_OPERADOR}

Clicar Na Aba Imagem
    Aguardar Elemento Visível       ${ABA_IMAGEM}
    Click Element                   ${ABA_IMAGEM}

Verificar Aba Visível
    [Arguments]    ${aba}
    Element Should Be Visible       ${aba}

# ── Ações Comuns ──────────────────────────────────────────────────────────────

Clicar Em Novo
    Aguardar Elemento Visível       ${BTN_NOVO}
    Click Element                   ${BTN_NOVO}

Clicar Em Salvar
    Aguardar Elemento Clicável      ${BTN_SALVAR}
    Click Element                   ${BTN_SALVAR}

Clicar Em Cancelar
    Aguardar Elemento Visível       ${BTN_CANCELAR}
    Click Element                   ${BTN_CANCELAR}

Clicar Em Editar
    Aguardar Elemento Visível       ${BTN_EDITAR}
    Click Element                   ${BTN_EDITAR}

Clicar Em Excluir
    Aguardar Elemento Visível       ${BTN_EXCLUIR}
    Click Element                   ${BTN_EXCLUIR}

Confirmar Exclusão
    Aguardar Elemento Visível       ${BTN_CONFIRMAR_EXCLUSAO}
    Click Element                   ${BTN_CONFIRMAR_EXCLUSAO}

Cancelar Exclusão
    Aguardar Elemento Visível       ${BTN_CANCELAR_EXCLUSAO}
    Click Element                   ${BTN_CANCELAR_EXCLUSAO}

# ── Setor – Formulário ────────────────────────────────────────────────────────

Verificar Formulário De Novo Setor
    Aguardar Elemento Visível       ${TITULO_FORM_NOVO_SETOR}
    Element Should Be Visible       ${TITULO_FORM_NOVO_SETOR}
    Element Should Be Visible       ${INPUT_NUMERO_SETOR}
    Element Should Be Visible       ${INPUT_NOME_SETOR}

Verificar Formulário De Edição De Setor
    Aguardar Elemento Visível       ${TITULO_FORM_EDITAR_SETOR}
    Element Should Be Visible       ${TITULO_FORM_EDITAR_SETOR}

Preencher Número Do Setor
    [Arguments]    ${numero}
    Aguardar Elemento Visível       ${INPUT_NUMERO_SETOR}
    Clear Element Text              ${INPUT_NUMERO_SETOR}
    Input Text                      ${INPUT_NUMERO_SETOR}    ${numero}

Preencher Nome Do Setor
    [Arguments]    ${nome}
    Aguardar Elemento Visível       ${INPUT_NOME_SETOR}
    Clear Element Text              ${INPUT_NOME_SETOR}
    Input Text                      ${INPUT_NOME_SETOR}    ${nome}

Verificar Formulário De Setor Ainda Aberto
    Element Should Be Visible       ${TITULO_FORM_NOVO_SETOR}

Aguardar Formulário De Setor Fechar
    Wait Until Element Is Not Visible    ${TITULO_FORM_NOVO_SETOR}    timeout=${TIMEOUT}

Verificar Mensagem De Setor Duplicado
    Aguardar Elemento Visível       ${MSG_SETOR_DUPLICADO}
    Element Should Be Visible       ${MSG_SETOR_DUPLICADO}

Verificar Setor Removido Da Lista
    Sleep    1s
    Page Should Not Contain Element    ${SETOR_NA_LISTA}

# ── Sub-Setor – Formulário ────────────────────────────────────────────────────

Verificar Formulário De Novo Sub-Setor
    Aguardar Elemento Visível       ${TITULO_FORM_NOVO_SUBSETOR}
    Element Should Be Visible       ${TITULO_FORM_NOVO_SUBSETOR}

Preencher Nome Do Sub-Setor
    [Arguments]    ${nome}
    Aguardar Elemento Visível       ${INPUT_NOME_SUBSETOR}
    Clear Element Text              ${INPUT_NOME_SUBSETOR}
    Input Text                      ${INPUT_NOME_SUBSETOR}    ${nome}

# ── Fornecedor – Formulário ───────────────────────────────────────────────────

Verificar Formulário De Novo Fornecedor
    Aguardar Elemento Visível       ${TITULO_FORM_NOVO_FORNECEDOR}
    Element Should Be Visible       ${TITULO_FORM_NOVO_FORNECEDOR}

Preencher Nome Do Fornecedor
    [Arguments]    ${nome}
    Aguardar Elemento Visível       ${INPUT_NOME_FORNECEDOR}
    Clear Element Text              ${INPUT_NOME_FORNECEDOR}
    Input Text                      ${INPUT_NOME_FORNECEDOR}    ${nome}

# ── Alérgicos – Formulário ────────────────────────────────────────────────────

Verificar Formulário De Novo Alérgico
    Aguardar Elemento Visível       ${TITULO_FORM_NOVO_ALERGICO}
    Element Should Be Visible       ${TITULO_FORM_NOVO_ALERGICO}

Preencher Nome Do Alérgico
    [Arguments]    ${nome}
    Aguardar Elemento Visível       ${INPUT_NOME_ALERGICO}
    Clear Element Text              ${INPUT_NOME_ALERGICO}
    Input Text                      ${INPUT_NOME_ALERGICO}    ${nome}

# ── Operador – Formulário ─────────────────────────────────────────────────────

Verificar Formulário De Novo Operador
    Aguardar Elemento Visível       ${TITULO_FORM_NOVO_OPERADOR}
    Element Should Be Visible       ${TITULO_FORM_NOVO_OPERADOR}

Preencher Nome Do Operador
    [Arguments]    ${nome}
    Aguardar Elemento Visível       ${INPUT_NOME_OPERADOR}
    Clear Element Text              ${INPUT_NOME_OPERADOR}
    Input Text                      ${INPUT_NOME_OPERADOR}    ${nome}

Preencher Senha Do Operador
    [Arguments]    ${senha}
    Aguardar Elemento Visível       ${INPUT_SENHA_OPERADOR}
    Clear Element Text              ${INPUT_SENHA_OPERADOR}
    Input Password                  ${INPUT_SENHA_OPERADOR}    ${senha}

Verificar Operador Removido Da Lista
    Sleep    1s
    Page Should Not Contain Element    ${OPERADOR_NA_LISTA}
