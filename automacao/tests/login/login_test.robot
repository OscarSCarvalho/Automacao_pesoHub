*** Settings ***
Resource        ../../steps/login/login_steps.robot
Test Setup      Abrir Página De Login
Test Teardown   Encerrar Sessão De Teste

*** Test Cases ***

Login Com Usuário Válido
    [Tags]    ativo
    Informar E-mail Válido
    Informar Senha Válida
    Clicar Em Entrar
    Validar Acesso Ao Hub De Serviços

Login Com Senha Incorreta
    [Tags]    ativo
    Informar E-mail Válido
    Informar Senha Inválida
    Clicar Em Entrar
    Validar Mensagem De Erro De Login

Login Com E-mail Incorreto
    [Tags]    ativo
    Informar E-mail Inválido
    Informar Senha Válida
    Clicar Em Entrar
    Validar Mensagem De Erro De Login

Login Com E-mail E Senha Incorretos
    [Tags]    ativo
    Informar E-mail Inválido
    Informar Senha Inválida
    Clicar Em Entrar
    Validar Mensagem De Erro De Login

Login Com Campos Vazios
    [Tags]    ativo
    Clicar Em Entrar
    Validar Permanência Na Página De Login
