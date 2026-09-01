*** Settings ***
Resource    ../../pages/balancas/balancas_page.robot
Resource    ../../variables/balancas/balancas_variables.robot
Resource    ../../resources/common/common.robot
Resource    ../../steps/hub/hub_steps.robot
Resource    ../../steps/login/login_steps.robot

*** Keywords ***

# ── Setup / Teardown ──────────────────────────────────────────────────────────

Acessar Tela De Balanças
    Acessar Hub De Serviços
    Navegar Para Tela De Balanças

Restaurar Estado Inicial Do Sistema
    Acessar Tela De Balanças
    Garantir Balança Cadastrada
    Encerrar Sessão De Teste

# ── Listagem ──────────────────────────────────────────────────────────────────

Validar Título Da Tela De Balanças
    Verificar Título Da Página Balanças

Validar Listagem De Balanças Exibida
    Verificar Tabela De Balanças Exibida

Validar Mensagem De Lista Vazia
    Verificar Mensagem De Lista Vazia

# ── Cadastro ──────────────────────────────────────────────────────────────────

Iniciar Cadastro De Nova Balança
    Clicar Em Nova Balança

Validar Formulário De Adição De Balança
    Verificar Formulário Adicionar Dispositivo

Informar Nome Da Balança
    Preencher Nome Da Balança    ${NOME_BALANCA_VALIDO}

Informar Endereço IP Da Balança
    Preencher Endereço IP Da Balança    ${ENDERECO_IP_VALIDO}

Informar Porta Da Balança
    Preencher Porta Da Balança    ${PORTA_VALIDA}

Salvar Cadastro De Balança
    Clicar Em Salvar Balança

Aguardar Confirmação Do Cadastro
    Aguardar Formulário De Cadastro Fechar

Garantir Balança Cadastrada
    ${visivel}=    Run Keyword And Return Status
    ...    Wait Until Page Contains Element    ${IP_BALANCA_NA_TELA}    timeout=5s
    IF    not ${visivel}
        Iniciar Cadastro De Nova Balança
        Informar Nome Da Balança
        Informar Endereço IP Da Balança
        Informar Porta Da Balança
        Salvar Cadastro De Balança
        Aguardar Confirmação Do Cadastro
    END

Cancelar Cadastro De Balança
    Clicar Em Cancelar Cadastro

Validar Cadastro Realizado Com Sucesso
    Verificar Mensagem De Sucesso No Cadastro

Validar Formulário Permanece Aberto
    Verificar Formulário De Cadastro Ainda Aberto

Validar Erro No Cadastro De Balança
    Verificar Mensagem De Erro No Cadastro

Validar Mensagem De IP Já Cadastrado
    Verificar Mensagem De IP Duplicado

# ── Edição ────────────────────────────────────────────────────────────────────

Iniciar Edição Da Balança
    Clicar Em Editar Balança

Validar Formulário De Edição Exibido
    Verificar Formulário De Edição Exibido

Alterar Nome Da Balança
    Editar Nome Da Balança    ${NOME_BALANCA_EDITADO}

Alterar Endereço IP Da Balança
    Editar Endereço IP Da Balança    ${IP_EDITADO}

Alterar Porta Da Balança
    Editar Porta Da Balança    ${PORTA_EDITADA}

Salvar Edição Da Balança
    Clicar Em Salvar Edição

Cancelar Edição Da Balança
    Clicar Em Cancelar Edição

Validar Edição Realizada Com Sucesso
    Verificar Mensagem De Sucesso Na Edição

# ── Exclusão ──────────────────────────────────────────────────────────────────

Iniciar Exclusão Da Balança
    Clicar Em Excluir Balança

Excluir Balança Se Existir
    ${existe}=    Run Keyword And Return Status
    ...    Element Should Be Visible    ${BTN_EXCLUIR_BALANCA}
    IF    ${existe}
        Clicar Em Excluir Balança
        Verificar Balança Removida Da Lista
    END

Confirmar Exclusão
    Confirmar Exclusão Da Balança

Validar Exclusão Realizada Com Sucesso
    Verificar Mensagem De Sucesso Na Exclusão

Validar Balança Removida Da Lista
    Verificar Balança Removida Da Lista
