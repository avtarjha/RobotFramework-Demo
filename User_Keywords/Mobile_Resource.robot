*** Settings ***
Library           AppiumLibrary
Library           Collections

*** Keywords ***
Switch Context
    [Documentation]    @{contexts} is a list variable which will contain all available contexts.
    ...
    ...    List viariables start with @.
    @{contexts}    Get Contexts
    ${current_context}    Get Current Context
    FOR    ${context}    IN    @{contexts}
        Run Keyword If    '${context}'!='${current_context}'    Switch To Context    ${context}
    END
