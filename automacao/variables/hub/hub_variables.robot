*** Variables ***

# ── URL ───────────────────────────────────────────────────────────────────────
${URL_HUB}                      https://pesohub-nexus.vercel.app/hub

# ── Locators – Hub de Serviços ────────────────────────────────────────────────
${NOME_EMPRESA}                 xpath=//*[normalize-space(text())='ramuza']
${CONTAINER_HUB}                xpath=PENDENTE
${LISTA_SERVICOS}               xpath=PENDENTE

# ── Locators – Dashboard ──────────────────────────────────────────────────────
${BTN_DASHBOARD}                xpath=//a[normalize-space(text())='Dashboard' and @href='/']

# Cards de métricas
${BALANCAS_ATIVAS}              xpath=//p[normalize-space(text())='Balanças Ativas']
${BALANCAS_ATIVAS_VALOR}        xpath=//p[normalize-space(text())='Balanças Ativas']/following-sibling::p
${PRODUTOS_PLU}                 xpath=//p[normalize-space(text())='Produtos (PLU)']
${PRODUTOS_PLU_VALOR}           xpath=//p[normalize-space(text())='Produtos (PLU)']/following-sibling::p

# Status das Balanças
${STATUS_BALANCA}               xpath=//*[contains(text(),'Status das Balanças')]
${STATUS_ONLINE}                xpath=//*[contains(normalize-space(text()),'Online')]
${STATUS_OFFLINE}               xpath=//*[contains(normalize-space(text()),'Offline')]

# ── Dados esperados ───────────────────────────────────────────────────────────
${EMPRESA_ESPERADA}             ramuza
