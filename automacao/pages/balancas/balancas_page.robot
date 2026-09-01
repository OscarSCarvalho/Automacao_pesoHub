*** Settings ***
Library     SeleniumLibrary
Resource    ../../resources/common/common.robot
Resource    ../../variables/balancas/balancas_variables.robot

*** Keywords ***

# ── Navegação ─────────────────────────────────────────────────────────────────

Navegar Para Tela De Balanças
    Aguardar Elemento Visível       ${BTN_MENU_BALANCAS}
    Click Element                   ${BTN_MENU_BALANCAS}
    Aguardar Elemento Visível       ${TITULO_PAGINA_BALANCAS}

# ── Listagem ──────────────────────────────────────────────────────────────────

Verificar Título Da Página Balanças
    Aguardar Elemento Visível       ${TITULO_PAGINA_BALANCAS}
    Element Should Be Visible       ${TITULO_PAGINA_BALANCAS}

Verificar Tabela De Balanças Exibida
    Aguardar Elemento Visível       ${TABELA_BALANCAS}
    Element Should Be Visible       ${TABELA_BALANCAS}

Verificar Mensagem De Lista Vazia
    Aguardar Elemento Visível       ${MENSAGEM_LISTA_VAZIA}
    Element Should Be Visible       ${MENSAGEM_LISTA_VAZIA}

# ── Cadastro ──────────────────────────────────────────────────────────────────

Clicar Em Nova Balança
    Aguardar Elemento Visível       ${BTN_NOVA_BALANCA}
    Click Element                   ${BTN_NOVA_BALANCA}

Verificar Formulário Adicionar Dispositivo
    Aguardar Elemento Visível       ${TITULO_FORM_ADICIONAR}
    Element Should Be Visible       ${TITULO_FORM_ADICIONAR}
    Element Should Be Visible       ${LABEL_NOME_BALANCA}
    Element Should Be Visible       ${LABEL_ENDERECO_IP}

Preencher Nome Da Balança
    [Arguments]    ${nome}
    Aguardar Elemento Visível       ${INPUT_NOME_BALANCA}
    Clear Element Text              ${INPUT_NOME_BALANCA}
    Input Text                      ${INPUT_NOME_BALANCA}    ${nome}

Preencher Endereço IP Da Balança
    [Arguments]    ${ip}
    Aguardar Elemento Visível       ${INPUT_ENDERECO_IP}
    Clear Element Text              ${INPUT_ENDERECO_IP}
    Input Text                      ${INPUT_ENDERECO_IP}    ${ip}

Preencher Porta Da Balança
    [Arguments]    ${porta}
    Aguardar Elemento Visível       ${INPUT_PORTA}
    Clear Element Text              ${INPUT_PORTA}
    Input Text                      ${INPUT_PORTA}    ${porta}

Clicar Em Salvar Balança
    Aguardar Elemento Clicável      ${BTN_SALVAR_BALANCA}
    Click Element                   ${BTN_SALVAR_BALANCA}

Clicar Em Cancelar Cadastro
    Aguardar Elemento Visível       ${BTN_CANCELAR_BALANCA}
    Click Element                   ${BTN_CANCELAR_BALANCA}

Verificar Formulário De Cadastro Ainda Aberto
    Element Should Be Visible       ${TITULO_FORM_ADICIONAR}

Aguardar Formulário De Cadastro Fechar
    Wait Until Element Is Not Visible    ${TITULO_FORM_ADICIONAR}    timeout=${TIMEOUT}

Verificar Mensagem De Sucesso No Cadastro
    Aguardar Elemento Visível       ${MSG_SUCESSO_CADASTRO}
    Element Should Be Visible       ${MSG_SUCESSO_CADASTRO}

Verificar Mensagem De Erro No Cadastro
    Aguardar Elemento Visível       ${MSG_ERRO_CADASTRO}
    Element Should Be Visible       ${MSG_ERRO_CADASTRO}

Verificar Mensagem De IP Duplicado
    Aguardar Elemento Visível       ${MSG_IP_DUPLICADO}
    Element Should Be Visible       ${MSG_IP_DUPLICADO}

# ── Edição ────────────────────────────────────────────────────────────────────

Clicar Em Editar Balança
    Aguardar Elemento Visível       ${BTN_EDITAR_BALANCA}
    Click Element                   ${BTN_EDITAR_BALANCA}

Verificar Formulário De Edição Exibido
    Aguardar Elemento Visível       ${TITULO_FORM_EDITAR}
    Element Should Be Visible       ${TITULO_FORM_EDITAR}
    Element Should Be Visible       ${INPUT_NOME_BALANCA_EDICAO}

Editar Nome Da Balança
    [Arguments]    ${nome}
    Aguardar Elemento Visível       ${INPUT_NOME_BALANCA_EDICAO}
    Clear Element Text              ${INPUT_NOME_BALANCA_EDICAO}
    Input Text                      ${INPUT_NOME_BALANCA_EDICAO}    ${nome}

Editar Endereço IP Da Balança
    [Arguments]    ${ip}
    Aguardar Elemento Visível       ${INPUT_ENDERECO_IP_EDICAO}
    Clear Element Text              ${INPUT_ENDERECO_IP_EDICAO}
    Input Text                      ${INPUT_ENDERECO_IP_EDICAO}    ${ip}

Editar Porta Da Balança
    [Arguments]    ${porta}
    Aguardar Elemento Visível       ${INPUT_PORTA_EDICAO}
    Clear Element Text              ${INPUT_PORTA_EDICAO}
    Input Text                      ${INPUT_PORTA_EDICAO}    ${porta}

Clicar Em Salvar Edição
    Aguardar Elemento Clicável      ${BTN_SALVAR_EDICAO}
    Click Element                   ${BTN_SALVAR_EDICAO}

Clicar Em Cancelar Edição
    Aguardar Elemento Visível       ${BTN_CANCELAR_EDICAO}
    Click Element                   ${BTN_CANCELAR_EDICAO}

Verificar Mensagem De Sucesso Na Edição
    Aguardar Elemento Visível       ${MSG_SUCESSO_EDICAO}
    Element Should Be Visible       ${MSG_SUCESSO_EDICAO}

# ── Exclusão ──────────────────────────────────────────────────────────────────

Clicar Em Excluir Balança
    Aguardar Elemento Visível       ${BTN_EXCLUIR_BALANCA}
    Click Element                   ${BTN_EXCLUIR_BALANCA}

Confirmar Exclusão Da Balança
    Aguardar Elemento Visível       ${BTN_CONFIRMAR_EXCLUSAO}
    Click Element                   ${BTN_CONFIRMAR_EXCLUSAO}

Verificar Mensagem De Sucesso Na Exclusão
    Aguardar Elemento Visível       ${MSG_SUCESSO_EXCLUSAO}
    Element Should Be Visible       ${MSG_SUCESSO_EXCLUSAO}

Verificar Balança Removida Da Lista
    Sleep    1s
    Page Should Not Contain Element    ${IP_BALANCA_NA_TELA}
