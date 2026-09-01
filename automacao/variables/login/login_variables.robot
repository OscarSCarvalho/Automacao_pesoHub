*** Variables ***

# ── URL ──────────────────────────────────────────────────────────────────────
${URL}                      https://pesohub-nexus.vercel.app/login

# ── Locators – Página de Login ────────────────────────────────────────────────
${INPUT_EMAIL}              xpath=//input[@type='email' and @autocomplete='email']
${INPUT_SENHA}              xpath=//input[@type='password' and @autocomplete='current-password']
${BTN_ENTRAR}               xpath=//button[@type='submit' and normalize-space(text())='Entrar']
${MSG_ERRO_LOGIN}           xpath=//div[normalize-space(text())='Credenciais inválidas']
${LABEL_CAMPO_EMAIL}        css=label[for="email"]
${LABEL_CAMPO_SENHA}        css=label[for="password"]

# ── Locator pós-login (elemento que confirma acesso ao Hub de Serviços) ──────
${ELEMENTO_HUB_SERVICOS}    xpath=//*[normalize-space(text())='ramuza']

# ── Dados de Teste ────────────────────────────────────────────────────────────
${EMAIL_VALIDO}             admin@ramuza.com.br
${SENHA_VALIDA}             superadmin123
${EMAIL_INVALIDO}           invalido@email.com
${SENHA_INVALIDA}           senhaerrada
${EMAIL_VAZIO}              ${EMPTY}
${SENHA_VAZIA}              ${EMPTY}
