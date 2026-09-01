*** Settings ***
Library     SeleniumLibrary
Resource    ../../resources/common/common.robot
Resource    ../../variables/login/login_variables.robot

*** Keywords ***

# ── Navegação ─────────────────────────────────────────────────────────────────

Navegar Para Página De Login
    Go To                           ${URL}
    Aguardar Elemento Visível       ${INPUT_EMAIL}

# ── Interações com campos ─────────────────────────────────────────────────────

Preencher Campo Email
    [Arguments]    ${email}
    Aguardar Elemento Visível    ${INPUT_EMAIL}
    Clear Element Text           ${INPUT_EMAIL}
    Input Text                   ${INPUT_EMAIL}    ${email}

Preencher Campo Senha
    [Arguments]    ${senha}
    Aguardar Elemento Visível    ${INPUT_SENHA}
    Clear Element Text           ${INPUT_SENHA}
    Input Password               ${INPUT_SENHA}    ${senha}

Clicar Botão Entrar
    Aguardar Elemento Clicável    ${BTN_ENTRAR}
    Click Button                  ${BTN_ENTRAR}

# ── Verificações ──────────────────────────────────────────────────────────────

Verificar Redirecionamento Para Hub De Serviços
    Aguardar Elemento Visível               ${ELEMENTO_HUB_SERVICOS}
    Element Should Be Visible               ${ELEMENTO_HUB_SERVICOS}

Verificar Mensagem De Erro Exibida
    Aguardar Elemento Visível       ${MSG_ERRO_LOGIN}
    Element Should Be Visible       ${MSG_ERRO_LOGIN}

Verificar Página De Login Exibida
    Location Should Contain         /login
    Element Should Be Visible       ${INPUT_EMAIL}
