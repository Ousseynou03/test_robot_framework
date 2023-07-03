*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://www.google.com
*** Keywords ***
Ouvrir le navigateur
    [Arguments]      ${url}     ${browser}
    IF    "${browser}" == "Chrome"
        openBrowserChrome   ${url}
    ELSE IF   "${browser}" == "Edge"
         openBrowserEdge   ${url}
         ELSE IF   "${browser}" == "Firefox"
            openBrowserFirefox  ${url}
    END
    maximize browser window
    Log To Console    Exécution de test démarrée sur ${browser}

openBrowserChrome
    [Arguments]   ${url}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --disable-logging
    Create Webdriver    Chrome    options=${options}
    Go To    ${url}

Fermer le navigateur
    Close browser
    Log To Console    Fin de l'exécution de test

*** Test Cases ***
Ouvrir le navigateur
Fermer le navigateur