*** Variables ***

# ── URL ───────────────────────────────────────────────────────────────────────
${URL_CADASTROS}                        https://pesohub-nexus.vercel.app/cadastros

# ── Locators – Navegação até Cadastros ───────────────────────────────────────
${BTN_MENU_CADASTROS}                   xpath=//a[normalize-space(text())='Cadastros' and @href='/cadastros']

# ── Locators – Título da Página ───────────────────────────────────────────────
${TITULO_PAGINA_CADASTROS}              xpath=//*[normalize-space(text())='Cadastros' and not(self::a)]

# ── Locators – Abas ───────────────────────────────────────────────────────────
${ABA_SETOR}                            xpath=//button[normalize-space(text())='Setor']
${ABA_SUBSETOR}                         xpath=//button[normalize-space(text())='Sub-Setor']
${ABA_FORNECEDOR}                       xpath=//button[normalize-space(text())='Fornecedor']
${ABA_ALERGICOS}                        xpath=//button[normalize-space(text())='Alérgicos']
${ABA_TABELA_NUTRICIONAL}               xpath=//button[normalize-space(text())='Tabela Nutricional']
${ABA_OPERADOR}                         xpath=//button[normalize-space(text())='Operador']
${ABA_IMAGEM}                           xpath=//button[normalize-space(text())='Imagem']

# ── Locators – Ações Comuns ───────────────────────────────────────────────────
${BTN_NOVO}                             xpath=//button[normalize-space(text())='Novo']
${BTN_IMPORTAR_CSV}                     xpath=//button[normalize-space(text())='Importar CSV']
${BTN_EXPORTAR_CSV}                     xpath=//button[normalize-space(text())='Exportar CSV']
${BTN_SALVAR}                           xpath=//button[@type='submit' and normalize-space(text())='Salvar']
${BTN_CANCELAR}                         xpath=//button[normalize-space(text())='Cancelar']
${BTN_CONFIRMAR_EXCLUSAO}               xpath=//button[normalize-space(text())='Confirmar']
${BTN_CANCELAR_EXCLUSAO}                xpath=//button[normalize-space(text())='Cancelar']
${BTN_EDITAR}                           xpath=//button[.//*[contains(@class,'lucide-pen')]]
${BTN_EXCLUIR}                          xpath=//button[.//*[contains(@class,'lucide-trash')]]

# ── Locators – Setor ─────────────────────────────────────────────────────────
${TITULO_FORM_NOVO_SETOR}               xpath=//*[normalize-space(text())='Novo Setor']
${TITULO_FORM_EDITAR_SETOR}             xpath=//*[normalize-space(text())='Editar Setor']
${INPUT_NUMERO_SETOR}                   xpath=//input[@placeholder='Número do setor']
${INPUT_NOME_SETOR}                     xpath=//input[@placeholder='Nome do setor']
${MSG_SETOR_DUPLICADO}                  xpath=//*[contains(text(),'já cadastrado')]

# ── Locators – Sub-Setor ──────────────────────────────────────────────────────
${TITULO_FORM_NOVO_SUBSETOR}            xpath=//*[normalize-space(text())='Novo Sub-Setor']
${TITULO_FORM_EDITAR_SUBSETOR}          xpath=//*[normalize-space(text())='Editar Sub-Setor']
${INPUT_NUMERO_SUBSETOR}                xpath=PENDENTE
${INPUT_NOME_SUBSETOR}                  xpath=PENDENTE

# ── Locators – Fornecedor ─────────────────────────────────────────────────────
${TITULO_FORM_NOVO_FORNECEDOR}          xpath=//*[normalize-space(text())='Novo Fornecedor']
${TITULO_FORM_EDITAR_FORNECEDOR}        xpath=//*[normalize-space(text())='Editar Fornecedor']
${INPUT_NOME_FORNECEDOR}                xpath=PENDENTE
${INPUT_CNPJ_FORNECEDOR}                xpath=PENDENTE

# ── Locators – Alérgicos ──────────────────────────────────────────────────────
${TITULO_FORM_NOVO_ALERGICO}            xpath=//*[normalize-space(text())='Novo Alérgico']
${TITULO_FORM_EDITAR_ALERGICO}          xpath=//*[normalize-space(text())='Editar Alérgico']
${INPUT_NOME_ALERGICO}                  xpath=PENDENTE

# ── Locators – Tabela Nutricional ─────────────────────────────────────────────
${TITULO_FORM_NOVA_TABELA_NUTRICIONAL}  xpath=//*[normalize-space(text())='Nova Tabela Nutricional']
${TITULO_FORM_EDITAR_TABELA_NUTRICIONAL}  xpath=//*[normalize-space(text())='Editar Tabela Nutricional']
${INPUT_NOME_TABELA_NUTRICIONAL}        xpath=PENDENTE

# ── Locators – Operador ───────────────────────────────────────────────────────
${TITULO_FORM_NOVO_OPERADOR}            xpath=//*[normalize-space(text())='Novo Operador']
${TITULO_FORM_EDITAR_OPERADOR}          xpath=//*[normalize-space(text())='Editar Operador']
${INPUT_NOME_OPERADOR}                  xpath=PENDENTE
${INPUT_SENHA_OPERADOR}                 xpath=PENDENTE

# ── Locators – Imagem ─────────────────────────────────────────────────────────
${TITULO_FORM_NOVA_IMAGEM}              xpath=//*[normalize-space(text())='Nova Imagem']
${INPUT_IMAGEM}                         xpath=PENDENTE

# ── Dados de Teste – Setor ────────────────────────────────────────────────────
${NUMERO_SETOR_VALIDO}                  99
${NOME_SETOR_VALIDO}                    Setor Teste Auto
${NOME_SETOR_EDITADO}                   Setor Teste Editado

# ── Dados de Teste – Sub-Setor ────────────────────────────────────────────────
${NOME_SUBSETOR_VALIDO}                 Sub-Setor Teste Auto
${NOME_SUBSETOR_EDITADO}                Sub-Setor Teste Editado

# ── Dados de Teste – Fornecedor ───────────────────────────────────────────────
${NOME_FORNECEDOR_VALIDO}               Fornecedor Teste Auto
${NOME_FORNECEDOR_EDITADO}              Fornecedor Teste Editado

# ── Dados de Teste – Alérgicos ────────────────────────────────────────────────
${NOME_ALERGICO_VALIDO}                 Glúten
${NOME_ALERGICO_EDITADO}                Glúten Editado

# ── Dados de Teste – Operador ─────────────────────────────────────────────────
${NOME_OPERADOR_VALIDO}                 Operador Teste Auto
${SENHA_OPERADOR_VALIDO}                12345

# ── Locators dinâmicos ────────────────────────────────────────────────────────
${SETOR_NA_LISTA}                       xpath=//*[contains(text(),'${NOME_SETOR_VALIDO}')]
${FORNECEDOR_NA_LISTA}                  xpath=//*[contains(text(),'${NOME_FORNECEDOR_VALIDO}')]
${OPERADOR_NA_LISTA}                    xpath=//*[contains(text(),'${NOME_OPERADOR_VALIDO}')]
