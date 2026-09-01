*** Settings ***
Resource    ../../pages/login/login_page.robot
Resource    ../../variables/login/login_variables.robot
Resource    ../../resources/common/common.robot

*** Keywords ***

# ── Setup / Teardown ──────────────────────────────────────────────────────────

Abrir Página De Login
    Abrir Navegador
    Navegar Para Página De Login

Encerrar Sessão De Teste
    Fechar Navegador

# ── Ações de preenchimento ────────────────────────────────────────────────────

Informar E-mail Válido
    Preencher Campo Email    ${EMAIL_VALIDO}

Informar E-mail Inválido
    Preencher Campo Email    ${EMAIL_INVALIDO}

Informar Senha Válida
    Preencher Campo Senha    ${SENHA_VALIDA}

Informar Senha Inválida
    Preencher Campo Senha    ${SENHA_INVALIDA}

# ── Ação de submissão ─────────────────────────────────────────────────────────

Clicar Em Entrar
    Clicar Botão Entrar

# ── Validações ────────────────────────────────────────────────────────────────

Validar Acesso Ao Hub De Serviços
    Verificar Redirecionamento Para Hub De Serviços

Validar Mensagem De Erro De Login
    Verificar Mensagem De Erro Exibida

Validar Permanência Na Página De Login
    Verificar Página De Login Exibida
