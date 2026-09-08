*** Settings ***
Resource    ../../pages/cadastros/cadastros_page.robot
Resource    ../../variables/cadastros/cadastros_variables.robot
Resource    ../../resources/common/common.robot
Resource    ../../steps/hub/hub_steps.robot
Resource    ../../steps/login/login_steps.robot

*** Keywords ***

# ── Navegação ─────────────────────────────────────────────────────────────────

Validar Botão Cadastros Visível No Hub
    Verificar Botão De Cadastros Visível

Clicar No Botão Cadastros
    Navegar Para Tela De Cadastros

Validar Título Da Tela De Cadastros
    Verificar Título Da Página Cadastros
