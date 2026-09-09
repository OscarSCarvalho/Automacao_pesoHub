*** Variables ***

# ── URL ───────────────────────────────────────────────────────────────────────
${URL_PRODUTOS}                     https://pesohub-nexus.vercel.app/products

# ── Locators – Navegação até Produtos ────────────────────────────────────────
${BTN_MENU_PRODUTOS}                xpath=//a[@href='/products']

# ── Locators – Listagem de Produtos ──────────────────────────────────────────
${TITULO_PAGINA_PRODUTOS}           xpath=//*[normalize-space(text())='Produtos (PLU)' and not(self::a)]
${TABELA_PRODUTOS}                  xpath=//main//div[3]//div[1]
${CONTADOR_PRODUTOS}                xpath=PENDENTE
${MENSAGEM_LISTA_VAZIA}             xpath=PENDENTE

# ── Locators – Busca ─────────────────────────────────────────────────────────
${INPUT_BUSCA}                      xpath=//main//div[2]//div[1]//input[1]
${RESULTADO_BUSCA_VAZIO}            xpath=//*[normalize-space(text())='Nenhum produto encontrado para os filtros aplicados.']

# ── Locators – Filtros ───────────────────────────────────────────────────────
${BTN_FILTROS}                      xpath=//button[contains(normalize-space(.),'Filtros') and .//*[contains(@class,'lucide-funnel')]]
${FILTRO_TODOS}                     xpath=//button[normalize-space(text())='Todos']
${FILTRO_SOMENTE_ATIVOS}            xpath=//button[normalize-space(text())='Somente ativos']
${FILTRO_SOMENTE_INATIVOS}          xpath=//button[normalize-space(text())='Somente inativos']

# ── Locators – Cadastro de Produto ───────────────────────────────────────────
${BTN_NOVO_PRODUTO}                 xpath=//button[contains(normalize-space(.),'Novo Produto')]
${TITULO_FORM_ADICIONAR}            xpath=//*[normalize-space(text())='Cadastro de Produto (PLU)']
${INPUT_CODIGO_PRODUTO}             xpath=(//form//input[@required and @type='text' and not(@maxlength) and not(@inputmode) and not(@placeholder)])[1]
${INPUT_EAN13}                      xpath=//input[@placeholder='0000000000000' and @maxlength='13']
${INPUT_NOME_PRODUTO}               xpath=(//form//input[@required and @type='text' and not(@maxlength) and not(@inputmode) and not(@placeholder)])[2]
${INPUT_PRECO_UNITARIO}             xpath=//input[@inputmode='decimal']
${INPUT_CUSTO}                      xpath=PENDENTE
${BTN_SALVAR_PRODUTO}               xpath=//button[@type='submit' and contains(normalize-space(.),'Salvar Produto')]
${BTN_CANCELAR_PRODUTO}             xpath=//button[@type='button' and normalize-space(text())='Cancelar']
${BTN_FECHAR_MODAL}                 xpath=PENDENTE

# ── Locators – Imposto / Alíquota ────────────────────────────────────────────
${SELECT_MODO_IMPOSTO}              xpath=PENDENTE
${INPUT_ALIQUOTA}                   xpath=PENDENTE
${OPCAO_SEM_IMPOSTO}                xpath=PENDENTE
${OPCAO_SOMA_POR_FORA}              xpath=PENDENTE

# ── Locators – Edição de Produto ─────────────────────────────────────────────
${BTN_EDITAR_PRODUTO}               xpath=//button[.//*[contains(@class,'lucide-pencil')]]
${TITULO_FORM_EDITAR}               xpath=//*[normalize-space(text())='Editar Produto (PLU)']
${BTN_SALVAR_EDICAO}                xpath=//button[@type='submit' and contains(normalize-space(.),'Salvar Alterações')]

# ── Locators – Exclusão de Produto ───────────────────────────────────────────
${BTN_EXCLUIR_PRODUTO}              xpath=//button[.//*[contains(@class,'lucide-trash')] and not(normalize-space(.))]
${BTN_CONFIRMAR_EXCLUSAO}           xpath=//button[@type='button' and contains(@class,'bg-red-600') and normalize-space(text())='Excluir']
${BTN_CANCELAR_EXCLUSAO}            xpath=//button[@type='button' and normalize-space(text())='Cancelar']
${BTN_EXCLUIR_TODOS}                xpath=//button[contains(normalize-space(.),'Excluir Todos')]

# ── Locators – Importação / Exportação ───────────────────────────────────────
${BTN_IMPORTAR_CSV}                 xpath=PENDENTE
${BTN_EXPORTAR}                     xpath=PENDENTE

# ── Dados de Teste – Cadastro ────────────────────────────────────────────────
${CODIGO_PRODUTO_VALIDO}            9001
${EAN13_VALIDO}                     7891234567895
${NOME_PRODUTO_VALIDO}              PRODUTO TESTE AUTO
${PRECO_UNITARIO_VALIDO}            12.50
${CODIGO_PRODUTO_BUSCA}             9001
${TERMO_BUSCA_INEXISTENTE}          XPTO123NAOEXISTE

# ── Dados de Teste – Edição ───────────────────────────────────────────────────
${NOME_PRODUTO_EDITADO}             PRODUTO TESTE EDITADO

# ── Dados de Teste – Validações de Campo ──────────────────────────────────────
${CODIGO_PRODUTO_AUX}               9002
${NOME_PRODUTO_AUX}                 PRODUTO AUX AUTO
${EAN_ACIMA_LIMITE}                 12345678901234567890
${EAN_TRUNCADO}                     1234567890123
${PRECO_NEGATIVO}                   -10
${PRECO_TEXTO_INVALIDO}             abc

# ── Locators dinâmicos (dependem de variáveis acima) ─────────────────────────
${PRODUTO_NA_TELA}                  xpath=//*[contains(text(),'${CODIGO_PRODUTO_VALIDO}')]
