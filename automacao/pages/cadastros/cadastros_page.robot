*** Settings ***
Library     SeleniumLibrary
Resource    ../../resources/common/common.robot
Resource    ../../variables/cadastros/cadastros_variables.robot

*** Keywords ***

# ── Navegação ─────────────────────────────────────────────────────────────────

Verificar Botão De Cadastros Visível
    Aguardar Elemento Visível       ${BTN_MENU_CADASTROS}
    Element Should Be Visible       ${BTN_MENU_CADASTROS}

Navegar Para Tela De Cadastros
    Click Element                   ${BTN_MENU_CADASTROS}
    Aguardar Elemento Visível       ${TITULO_PAGINA_CADASTROS}

Verificar Título Da Página Cadastros
    Aguardar Elemento Visível       ${TITULO_PAGINA_CADASTROS}
    Element Should Be Visible       ${TITULO_PAGINA_CADASTROS}
