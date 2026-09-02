# Memória do Projeto — Auto PesoHub

Arquivo de contexto para retomar o desenvolvimento de onde paramos.
Atualizar sempre que houver progresso relevante.

---

## Repositório

- **Local:** `C:/Projetos/Auto-PesoHub`
- **GitHub:** https://github.com/OscarSCarvalho/Automacao_pesoHub.git
- **Branch principal:** `master`
- **Branch de desenvolvimento:** `develop` ← trabalhar sempre aqui

---

## Sistema sob teste

- **URL:** https://pesohub-nexus.vercel.app
- **Login:** admin@ramuza.com.br / superadmin123
- **Empresa:** ramuza

---

## Stack

| Biblioteca | Versão |
|---|---|
| Robot Framework | 7.1 |
| SeleniumLibrary | 6.7.1 |
| Selenium | 4.25.0 |

- Navegador: Chrome (gerenciado automaticamente pelo Selenium Manager)
- Sem necessidade de especificar caminho do ChromeDriver

---

## Arquitetura POM (4 camadas)

```
automacao/
├── tests/        → casos de teste (não importam pages diretamente)
├── steps/        → keywords de negócio (orquestram as pages)
├── pages/        → interações com a UI (locators + ações)
├── variables/    → locators, URLs e dados de teste
└── resources/
    └── common/common.robot  → SeleniumLibrary, browser setup, keywords globais
```

**Regra:** tests → steps → pages → variables. Nunca pular camadas.

---

## Configurações globais (common.robot)

```robot
${BROWSER}          chrome
${TIMEOUT}          10s
${TIMEOUT_LONGO}    45s    # cold start do Vercel
${IMPLICIT_WAIT}    5s
```

Chrome options: `--start-maximized`, `--disable-notifications`, `--no-sandbox`, `--disable-dev-shm-usage`

---

## Padrões de locator usados no projeto

```
Texto exato:        xpath=//*[normalize-space(text())='Texto']
Botão por texto:    xpath=//button[normalize-space(text())='Texto']
Botão por ícone:    xpath=//button[.//*[contains(@class,'lucide-nome')]]
Link de menu:       xpath=//a[normalize-space(text())='Nome' and @href='/rota']
Input:              xpath=//input[@placeholder='placeholder']
```

---

## Módulos implementados

### Login — `tests/login/login_test.robot`
| # | Cenário | Tag |
|---|---|---|
| 1 | Login Com Usuário Válido | ativo |
| 2 | Login Com Senha Incorreta | ativo |
| 3 | Login Com E-mail Incorreto | ativo |
| 4 | Login Com E-mail E Senha Incorretos | ativo |
| 5 | Login Com Campos Vazios | ativo |

### Hub — `tests/hub/hub_test.robot`
| # | Cenário | Tag |
|---|---|---|
| 6 | Verificar Nome Da Empresa Exibido No Hub | ativo |
| 7 | Verificar Botão Dashboard Disponível No Hub | ativo |
| 8 | Verificar Dados Do Dashboard | ativo (WARN: balança offline esperado) |

### Balanças — `tests/balancas/balancas_test.robot`
| # | Cenário | Tag |
|---|---|---|
| 9 | Verificar Acesso À Tela De Balanças | ativo |
| 10 | Verificar Formulário De Adição De Balança | ativo |
| 11 | Preencher Formulário E Cancelar Cadastro De Balança | ativo |
| 12 | Excluir Balança Existente E Recadastrar Com Mesmo IP | ativo |
| 13 | Cadastrar Balança Com IP Já Existente | ativo |
| 14 | Cadastrar Balança Com Campos Vazios | ativo |
| 15 | Editar Balança Cadastrada | ativo |
| 16 | Excluir Balança Cadastrada | ativo |

### Edição de Balanças — `tests/balancas/editar_balanca_test.robot`
| # | Cenário | Tag |
|---|---|---|
| 17 | Verificar Formulário De Edição De Balança | ativo |
| 18 | Editar Nome Da Balança E Salvar | ativo |
| 19 | Cancelar Edição Da Balança | ativo |
| 20 | Editar Endereço IP Da Balança E Salvar | **pendente** — aguarda 2º IP disponível |
| 21 | Editar Porta Da Balança E Salvar | **pendente** — aguarda 2º IP disponível |

### Produtos PLU — `tests/produtos/produtos_test.robot`
| # | Cenário | Tag |
|---|---|---|
| 22 | Verificar Acesso À Tela De Produtos | ativo |
| 23 | Verificar Listagem De Produtos Exibida | ativo |
| 24 | Buscar Produto Por Código Existente | ativo |
| 25 | Buscar Com Termo Inexistente | ativo |
| 26 | Limpar Busca Retorna Lista Completa | ativo |
| 27 | Filtrar Somente Produtos Ativos | ativo |
| 28 | Filtrar Somente Produtos Inativos | **pendente** — nenhum inativo cadastrado |
| 29 | Remover Filtro E Exibir Todos Os Produtos | ativo |
| 30 | Verificar Formulário De Adição De Produto | ativo |
| 31 | Cadastrar Produto Com Campos Obrigatórios Vazios | ativo |
| 32 | Excluir Produto Existente E Recadastrar | ativo |
| 33 | Cadastrar Produto Com Código Já Existente | ativo |
| 34 | Cancelar Cadastro De Produto | ativo |
| 35 | Verificar Formulário De Edição De Produto | ativo |
| 36 | Editar Nome Do Produto E Salvar | ativo |
| 37 | Cancelar Edição Do Produto | ativo |
| 38 | Cancelar Exclusão De Produto | ativo |
| 39 | Excluir Produto Cadastrado | ativo |

### Smoke — `tests/smoke/smoke_test.robot`
| # | Cenário | Tag |
|---|---|---|
| 40 | Verificar Abertura Do Navegador | — |

### Cadastros — `tests/cadastros/cadastros_test.robot` ← CRIADO EM 2026-09-01
| # | Sub-módulo | Cenário | Tag |
|---|---|---|---|
| 41 | Navegação | Verificar Acesso À Tela De Cadastros | ativo |
| 42 | Navegação | Verificar Abas Disponíveis Na Tela De Cadastros | ativo |
| 43 | Navegação | Verificar Navegação Para Aba Setor | ativo |
| 44 | Navegação | Verificar Navegação Para Aba Sub-Setor | ativo |
| 45 | Navegação | Verificar Navegação Para Aba Fornecedor | ativo |
| 46 | Navegação | Verificar Navegação Para Aba Alérgicos | ativo |
| 47 | Navegação | Verificar Navegação Para Aba Tabela Nutricional | ativo |
| 48 | Navegação | Verificar Navegação Para Aba Operador | ativo |
| 49 | Navegação | Verificar Navegação Para Aba Imagem | ativo |
| 50 | Setor | Verificar Formulário De Adição De Setor | ativo |
| 51 | Setor | Cadastrar Setor Com Campos Vazios | ativo |
| 52 | Setor | Excluir Setor Existente E Recadastrar | ativo |
| 53 | Setor | Cadastrar Setor Com Nome Já Existente | ativo |
| 54 | Setor | Cancelar Cadastro De Setor | ativo |
| 55 | Setor | Verificar Formulário De Edição De Setor | ativo |
| 56 | Setor | Editar Nome Do Setor E Salvar | ativo |
| 57 | Setor | Cancelar Edição Do Setor | ativo |
| 58 | Setor | Cancelar Exclusão De Setor | ativo |
| 59 | Setor | Excluir Setor Cadastrado | ativo |
| 60 | Sub-Setor | Verificar Formulário De Adição De Sub-Setor | **pendente** |
| 61 | Sub-Setor | Cadastrar Sub-Setor Com Campos Vazios | **pendente** |
| 62 | Sub-Setor | Cadastrar Sub-Setor Válido | **pendente** |
| 63 | Sub-Setor | Cancelar Cadastro De Sub-Setor | **pendente** |
| 64 | Fornecedor | Verificar Formulário De Adição De Fornecedor | **pendente** |
| 65 | Fornecedor | Cadastrar Fornecedor Com Campos Vazios | **pendente** |
| 66 | Fornecedor | Cadastrar Fornecedor Válido | **pendente** |
| 67 | Fornecedor | Cancelar Cadastro De Fornecedor | **pendente** |
| 68 | Alérgicos | Verificar Formulário De Adição De Alérgico | **pendente** |
| 69 | Alérgicos | Cadastrar Alérgico Com Campos Vazios | **pendente** |
| 70 | Alérgicos | Cadastrar Alérgico Válido | **pendente** |
| 71 | Alérgicos | Cancelar Cadastro De Alérgico | **pendente** |
| 72 | Operador | Verificar Formulário De Adição De Operador | **pendente** |
| 73 | Operador | Cadastrar Operador Com Campos Vazios | **pendente** |
| 74 | Operador | Cadastrar Operador Válido | **pendente** |
| 75 | Operador | Cancelar Cadastro De Operador | **pendente** |
| 76 | Operador | Excluir Operador Cadastrado | **pendente** |
| 77 | Operador | Cancelar Exclusão De Operador | **pendente** |

---

## Dados de teste

| Módulo | Campo | Valor |
|---|---|---|
| Produtos | Código | 9001 |
| Produtos | EAN-13 | 7891234567895 |
| Produtos | Nome | PRODUTO TESTE AUTO |
| Produtos | Preço | 12.50 |
| Balanças | Nome | test-balança |
| Balanças | IP | 192.168.0.217 |
| Balanças | Porta | 30055 |
| Setores | Número | 99 |
| Setores | Nome | Setor Teste Auto |
| Operador | Nome | Operador Teste Auto |
| Operador | Senha | 12345 |

---

## Resultado da última execução (2026-09-01)

**40 testes | 17 passaram | 23 falharam**

| Módulo | Passou | Falhou |
|---|---|---|
| Login | 5 | 0 |
| Hub | 3 | 0 |
| Smoke | 1 | 0 |
| Balanças | 8 | 5 |
| Produtos | 0 | 18 |

**Causa das falhas — Balanças:**
- Sessão expira (elemento `ramuza` não encontrado após 45s) nos testes de editar/excluir que rodam por último
- Locators `xpath=PENDENTE` nos cenários de editar IP/Porta (pendentes propositalmente)

**Causa das falhas — Produtos:**
- Produto de código `9001` não existe na base no momento da execução (estado inconsistente de run anterior)
- Locator `xpath=//main//div[3]//div[1]` não encontrado (possível mudança de estrutura na UI)

---

## Comandos úteis

```bash
# Rodar todos os testes
cd C:/Projetos/Auto-PesoHub/automacao
robot --outputdir results tests/

# Rodar só ativos
robot --outputdir results --include ativo tests/

# Rodar módulo específico
robot --outputdir results tests/login/
robot --outputdir results tests/cadastros/

# Ver relatório
start results/report.html
```

---

## Próximos passos

- [ ] Mapear locators reais dos formulários de Sub-Setor, Fornecedor, Alérgicos, Operador e Imagem e ativar cenários pendentes do módulo Cadastros
- [ ] Investigar e corrigir falhas de sessão nas Balanças (Editar/Excluir)
- [ ] Corrigir falhas do módulo Produtos (produto 9001 ausente + locator de listagem)
- [ ] Criar módulo Etiquetas
- [ ] Criar módulo Configurações
- [ ] Criar módulo Sincronização

---

## Histórico de sessões

| Data | O que foi feito |
|---|---|
| 2026-09-01 | Inicializado `.git`, criado `.gitignore` e `README.md`, push para GitHub, criada branch `develop`, criado módulo Cadastros completo (76 cenários no total), executada suite completa (resultado: 17/40 passaram) |
