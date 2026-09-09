*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}          chrome
${TIMEOUT}          10s
${TIMEOUT_LONGO}    45s
${IMPLICIT_WAIT}    5s
${HEADLESS}         false

*** Keywords ***
Abrir Navegador
    ${options}=     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method     ${options}    add_argument    --start-maximized
    Call Method     ${options}    add_argument    --disable-notifications
    Call Method     ${options}    add_argument    --no-sandbox
    Call Method     ${options}    add_argument    --disable-dev-shm-usage
    IF    '${HEADLESS}' == 'true'
        Call Method     ${options}    add_argument    --headless=new
        Call Method     ${options}    add_argument    --disable-gpu
        Call Method     ${options}    add_argument    --window-size=1920,1080
    END
    Create WebDriver    Chrome    options=${options}
    Set Selenium Timeout        ${TIMEOUT}
    Set Selenium Implicit Wait  ${IMPLICIT_WAIT}

Fechar Navegador
    Capture Page Screenshot
    Close Browser

Aguardar Elemento Visível
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=${TIMEOUT}

Aguardar Elemento Clicável
    [Arguments]    ${locator}
    Wait Until Element Is Enabled    ${locator}    timeout=${TIMEOUT}
