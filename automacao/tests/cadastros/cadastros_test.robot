*** Settings ***
Resource        ../../steps/cadastros/cadastros_steps.robot
Suite Teardown  Encerrar Sessão De Teste
Test Setup      Acessar Hub De Serviços

*** Test Cases ***

# ── Navegação ─────────────────────────────────────────────────────────────────

Visualizar E Clicar Botão Cadastros No Hub
    [Tags]    ativo
    Validar Botão Cadastros Visível No Hub
    Clicar No Botão Cadastros
    Validar Título Da Tela De Cadastros
