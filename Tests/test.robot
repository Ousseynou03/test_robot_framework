*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}    https://www.google.com


*** Test Cases ***
Naviguer vers Google et fermer le navigateur
    [Documentation]    Ce test ouvre le navigateur, navigue vers Google, puis ferme le navigateur.
    Open Browser    ${URL}    ${BROWSER}    # Ouvrir le navigateur avec l'URL et le navigateur souhaités
    Maximize Browser Window
    Title Should Be    Google    # Vérifier que le titre de la page est "Google"
    Sleep    7s
    Close Browser    # Fermer le navigateur


