*** Settings ***
Library           RequestsLibrary
Library           Collections

*** Test Cases ***
TC001 Test APIs
    [Documentation]    This case demonstrates
    ...
    ...    * Sending a get request to https://jsonplaceholder.typicode.com/users
    ...
    ...    * From the response, extracting *name* key for all json objects and storing it to a list
    ...    RequestsLibrary - https://robotframework-requests.netlify.app/doc/requestslibrary#GET%20On%20Session
    ...
    ...    * I have included a FOR loop of range type in this test case to demonstrate how it works.
    ...
    ...    * The test suite containing this test imports 2 libraries - Requests and Collections
    Create Session    json_placeholder_session    https://jsonplaceholder.typicode.com
    ${response}    Get On Session    json_placeholder_session    /users    expected_status=200
    ${items_count}    Get Length    ${response.json()}
    @{list}    Set Local Variable    ${None}
    FOR    ${counter}    IN RANGE    0    ${items_count}
        Append To List    ${list}    ${response.json()[${counter}]}[name]
    END
    Log    ${list}
