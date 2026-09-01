*** Variables ***

# ── URL ───────────────────────────────────────────────────────────────────────
${URL_BALANCAS}                     https://pesohub-nexus.vercel.app/devices

# ── Locators – Navegação até Balanças ────────────────────────────────────────
${BTN_MENU_BALANCAS}                xpath=//a[normalize-space(text())='Balanças' and @href='/devices']

# ── Locators – Listagem de Balanças ──────────────────────────────────────────
${TITULO_PAGINA_BALANCAS}           xpath=//*[normalize-space(text())='Balanças' and not(self::a)]
${TABELA_BALANCAS}                  xpath=PENDENTE
${MENSAGEM_LISTA_VAZIA}             xpath=PENDENTE

# ── Locators – Cadastro de Balança ───────────────────────────────────────────
${BTN_NOVA_BALANCA}                 xpath=//button[normalize-space(text())='Adicionar']
${TITULO_FORM_ADICIONAR}            xpath=//*[normalize-space(text())='Adicionar Dispositivo']
${LABEL_NOME_BALANCA}               xpath=//*[normalize-space(text())='Nome da Balança']
${LABEL_ENDERECO_IP}                xpath=//*[normalize-space(text())='Endereço IP']
${INPUT_NOME_BALANCA}               xpath=//input[@placeholder='Ex: Balança Frios 02']
${INPUT_ENDERECO_IP}                xpath=//input[@placeholder='Ex: 192.168.0.155']
${INPUT_PORTA}                      xpath=//input[@type='text' and contains(@class,'font-mono') and not(@placeholder)]
${BTN_SALVAR_BALANCA}               xpath=//button[@type='submit' and normalize-space(text())='Salvar']
${BTN_CANCELAR_BALANCA}             xpath=//button[normalize-space(text())='Cancelar']
${MSG_SUCESSO_CADASTRO}             xpath=PENDENTE
${MSG_ERRO_CADASTRO}                xpath=PENDENTE
${MSG_IP_DUPLICADO}                 xpath=//*[contains(text(),'Já existe uma balança cadastrada com o IP')]

# ── Locators – Edição de Balança ─────────────────────────────────────────────
${BTN_EDITAR_BALANCA}               xpath=//button[.//*[contains(@class,'lucide-pen')]]
${TITULO_FORM_EDITAR}               xpath=//*[normalize-space(text())='Editar Dispositivo']
${INPUT_NOME_BALANCA_EDICAO}        xpath=//input[@placeholder='Ex: Balança Frios 02']
${INPUT_ENDERECO_IP_EDICAO}         xpath=//input[@placeholder='Ex: 192.168.0.155']
${INPUT_PORTA_EDICAO}               xpath=PENDENTE
${BTN_SALVAR_EDICAO}                xpath=//button[@type='submit' and normalize-space(text())='Salvar']
${BTN_CANCELAR_EDICAO}              xpath=//button[normalize-space(text())='Cancelar']
${MSG_SUCESSO_EDICAO}               xpath=PENDENTE

# ── Locators – Exclusão de Balança ───────────────────────────────────────────
${BTN_EXCLUIR_BALANCA}              xpath=//button[@title='Excluir']
${BTN_CONFIRMAR_EXCLUSAO}           xpath=PENDENTE
${MSG_SUCESSO_EXCLUSAO}             xpath=PENDENTE

# ── Dados de Teste – Cadastro ────────────────────────────────────────────────
${NOME_BALANCA_VALIDO}              test-balança
${ENDERECO_IP_VALIDO}               192.168.0.217
${PORTA_VALIDA}                     30055

# ── Dados de Teste – Edição ───────────────────────────────────────────────────
${NOME_BALANCA_EDITADO}             teste-editar
${IP_EDITADO}                       192.168.0.217
${PORTA_EDITADA}                    30055

# ── Locators dinâmicos (dependem de variáveis acima) ─────────────────────────
${IP_BALANCA_NA_TELA}               xpath=//*[contains(text(),'${ENDERECO_IP_VALIDO}')]
