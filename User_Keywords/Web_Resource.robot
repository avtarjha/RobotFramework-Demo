*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${search_text_box}    name=q
${show_more_button}    css=h3>div

*** Keywords ***
User navigates to Google Homepage
    Open Browser    ${url}    ${browser}    ${executable_path}
    Maximize Browser Window
    Set Browser Implicit Wait    30s

User searches for Cheese
    Wait Until Page Contains Element    ${search_text_box}    30s
    Wait Until Element Is Enabled    ${search_text_box}    30s
    Input Text    ${search_text_box}    cheese
    Press Keys    ${search_text_box}    RETURN

User should be able to validate that Show more button contains correct text
    Wait Until Element Is Enabled    ${show_more_button}    30s
    ${text_value}=    Get Element Attribute    ${show_more_button}    textContent
    Should be equal    ${text_value}    Show more
