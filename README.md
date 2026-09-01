# Automação PesoHub

Suite de testes automatizados para a aplicação [PesoHub](https://pesohub-nexus.vercel.app), desenvolvida com **Robot Framework** seguindo o padrão **Page Object Model (POM)**.

## Tecnologias

| Biblioteca | Versão |
|---|---|
| Robot Framework | 7.1 |
| SeleniumLibrary | 6.7.1 |
| Selenium | 4.25.0 |

## Estrutura do Projeto

```
automacao/
├── pages/              # Page Objects — interações com a UI
│   ├── login/
│   ├── hub/
│   ├── balancas/
│   └── produtos/
├── steps/              # Keywords de negócio por módulo
│   ├── login/
│   ├── hub/
│   ├── balancas/
│   └── produtos/
├── tests/              # Casos de teste organizados por módulo
│   ├── login/
│   ├── hub/
│   ├── balancas/
│   ├── produtos/
│   └── smoke/
├── variables/          # Variáveis e locators por módulo
│   ├── login/
│   ├── hub/
│   ├── balancas/
│   └── produtos/
├── resources/
│   └── common/         # Keywords e configurações compartilhadas
├── requirements.txt
└── robot.yaml
```

## Cenários de Teste

### Login (5 cenários)
| Cenário | Tag |
|---|---|
| Login com usuário válido | ativo |
| Login com senha incorreta | ativo |
| Login com e-mail incorreto | ativo |
| Login com e-mail e senha incorretos | ativo |
| Login com campos vazios | ativo |

### Hub de Serviços (3 cenários)
| Cenário | Tag |
|---|---|
| Verificar nome da empresa exibido no hub | ativo |
| Verificar botão dashboard disponível | ativo |
| Verificar dados do dashboard | ativo |

### Balanças (8 cenários)
| Cenário | Tag |
|---|---|
| Verificar acesso à tela de balanças | ativo |
| Verificar formulário de adição | ativo |
| Preencher formulário e cancelar cadastro | ativo |
| Excluir balança e recadastrar com mesmo IP | ativo |
| Cadastrar balança com IP já existente | ativo |
| Cadastrar balança com campos vazios | ativo |
| Editar balança cadastrada | ativo |
| Excluir balança cadastrada | ativo |

### Edição de Balanças (5 cenários)
| Cenário | Tag |
|---|---|
| Verificar formulário de edição | ativo |
| Editar nome da balança e salvar | ativo |
| Cancelar edição da balança | ativo |
| Editar endereço IP e salvar | pendente |
| Editar porta da balança e salvar | pendente |

### Produtos (18 cenários)
| Cenário | Tag |
|---|---|
| Verificar acesso à tela de produtos | ativo |
| Verificar listagem de produtos exibida | ativo |
| Buscar produto por código existente | ativo |
| Buscar com termo inexistente | ativo |
| Limpar busca retorna lista completa | ativo |
| Filtrar somente produtos ativos | ativo |
| Filtrar somente produtos inativos | pendente |
| Remover filtro e exibir todos os produtos | ativo |
| Verificar formulário de adição de produto | ativo |
| Cadastrar produto com campos obrigatórios vazios | ativo |
| Excluir produto existente e recadastrar | ativo |
| Cadastrar produto com código já existente | ativo |
| Cancelar cadastro de produto | ativo |
| Verificar formulário de edição de produto | ativo |
| Editar nome do produto e salvar | ativo |
| Cancelar edição do produto | ativo |
| Cancelar exclusão de produto | ativo |
| Excluir produto cadastrado | ativo |

### Smoke Test (1 cenário)
| Cenário | Tag |
|---|---|
| Verificar abertura do navegador | — |

**Total: 40 cenários de teste**

## Pré-requisitos

- Python 3.8+
- Google Chrome (versão compatível com o ChromeDriver instalado)
- ChromeDriver no PATH

## Instalação

```bash
pip install -r automacao/requirements.txt
```

## Como Executar

Todos os testes:
```bash
cd automacao
robot --outputdir results tests/
```

Módulo específico:
```bash
robot --outputdir results tests/login/
robot --outputdir results tests/balancas/
robot --outputdir results tests/produtos/
robot --outputdir results tests/hub/
```

Somente testes ativos:
```bash
robot --outputdir results --include ativo tests/
```

Smoke test:
```bash
robot --outputdir results tests/smoke/
```

## Relatórios

Após a execução, os relatórios são gerados em `automacao/results/`:

- `report.html` — relatório visual completo
- `log.html` — log detalhado de execução
- `output.xml` — saída em XML para integrações

## Configuração

As variáveis globais estão em `resources/common/common.robot`:

| Variável | Valor padrão |
|---|---|
| `${BROWSER}` | chrome |
| `${TIMEOUT}` | 10s |
| `${TIMEOUT_LONGO}` | 45s |
| `${IMPLICIT_WAIT}` | 5s |

A URL base e credenciais de teste estão em `variables/login/login_variables.robot`.
