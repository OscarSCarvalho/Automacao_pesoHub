*** Variables ***

# ── URL ───────────────────────────────────────────────────────────────────────
${URL_CADASTROS}                        https://pesohub-nexus.vercel.app/cadastros

# ── Locators – Botão no Hub ───────────────────────────────────────────────────
${BTN_MENU_CADASTROS}                   xpath=//a[normalize-space(text())='Cadastros' and @href='/cadastros']

# ── Locators – Título da Página ───────────────────────────────────────────────
${TITULO_PAGINA_CADASTROS}              xpath=//*[normalize-space(text())='Cadastros' and not(self::a)]
