*** Settings ***
Library     SeleniumLibrary
Resource    ../../resources/common/common.robot
Resource    ../../variables/hub/hub_variables.robot

*** Keywords ***

# ── Navegação ─────────────────────────────────────────────────────────────────

Verificar Que Está Na Tela Do Hub
    Wait Until Element Is Visible    ${NOME_EMPRESA}    timeout=${TIMEOUT_LONGO}

# ── Verificações ──────────────────────────────────────────────────────────────

Verificar Nome Da Empresa Exibido
    Aguardar Elemento Visível       ${NOME_EMPRESA}
    Element Text Should Be          ${NOME_EMPRESA}    ${EMPRESA_ESPERADA}

Verificar Container Do Hub Exibido
    Aguardar Elemento Visível       ${CONTAINER_HUB}
    Element Should Be Visible       ${CONTAINER_HUB}

Verificar Serviços Listados
    Aguardar Elemento Visível       ${LISTA_SERVICOS}
    Element Should Be Visible       ${LISTA_SERVICOS}

# ── Dashboard ─────────────────────────────────────────────────────────────────

Clicar No Botão Dashboard
    Aguardar Elemento Visível       ${BTN_DASHBOARD}
    Click Element                   ${BTN_DASHBOARD}

Verificar Botão Dashboard Ativo
    Aguardar Elemento Visível       ${BTN_DASHBOARD}
    Element Should Be Visible       ${BTN_DASHBOARD}

Verificar Balanças Ativas Exibidas
    Aguardar Elemento Visível       ${BALANCAS_ATIVAS}
    Element Should Be Visible       ${BALANCAS_ATIVAS}

Verificar Produtos PLU Exibidos
    Aguardar Elemento Visível       ${PRODUTOS_PLU}
    Element Should Be Visible       ${PRODUTOS_PLU}

Verificar Status Da Balança Exibido
    Aguardar Elemento Visível       ${STATUS_BALANCA}
    Element Should Be Visible       ${STATUS_BALANCA}

Verificar Status Das Balanças Online Ou Offline
    Aguardar Elemento Visível           ${STATUS_BALANCA}
    ${esta_online}=    Run Keyword And Return Status
    ...    Element Should Be Visible    ${STATUS_ONLINE}
    IF    ${esta_online}
        Log    RESULTADO: Balança está Online    level=WARN
        Set Test Message    Status da Balança: ONLINE    append=True
    ELSE
        Log    RESULTADO: Balança está Offline — sem balança física conectada    level=WARN
        Set Test Message    Status da Balança: OFFLINE (sem balança física disponível no ambiente de teste)    append=True
    END
