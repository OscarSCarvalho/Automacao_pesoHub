*** Settings ***
Resource    ../../pages/hub/hub_page.robot
Resource    ../../variables/hub/hub_variables.robot
Resource    ../../resources/common/common.robot
Resource    ../../steps/login/login_steps.robot

*** Keywords ***

# ── Setup / Teardown ──────────────────────────────────────────────────────────

Acessar Hub De Serviços
    Abrir Página De Login
    Informar E-mail Válido
    Informar Senha Válida
    Clicar Em Entrar
    Verificar Que Está Na Tela Do Hub

# ── Validações ────────────────────────────────────────────────────────────────

Validar Nome Da Empresa No Hub
    Verificar Nome Da Empresa Exibido

Validar Container Do Hub
    Verificar Container Do Hub Exibido

Validar Serviços Disponíveis
    Verificar Serviços Listados

# ── Dashboard ─────────────────────────────────────────────────────────────────

Acessar Dashboard
    Clicar No Botão Dashboard

Validar Botão Dashboard Visível
    Verificar Botão Dashboard Ativo

Validar Balanças Ativas No Dashboard
    Verificar Balanças Ativas Exibidas

Validar Produtos PLU No Dashboard
    Verificar Produtos PLU Exibidos

Validar Status Da Balança No Dashboard
    Verificar Status Da Balança Exibido

Validar Status Online Ou Offline Das Balanças
    Verificar Status Das Balanças Online Ou Offline
