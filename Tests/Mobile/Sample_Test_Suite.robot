*** Settings ***
Library           AppiumLibrary
Resource          ../../User_Keywords/Mobile_Resource.robot

*** Variables ***
${remoteURL}      http://localhost:4723/wd/hub
${platform_name}    iOS
${platform_version}    14.0
${device_name}    iPhone 11
${browser_name}    Safari

*** Test Cases ***
TC001 Google Search Mobile
    [Documentation]    The test demonstrate google search functionality on mobile web.
    ...
    ...    The main reason for choosing this scenario is to demonstrate switching between contexts of web app and native app, using a FOR loop and If condition in RobotFramework
    ...
    ...    Refer Switch Context keyword crated in *User Keywords —> Mobile_Resource*
    ...
    ...    Before running this test, set the variables remoteURL, platform_name, platform_version, device_name and browser_name
    ...
    ...    Locators used in the test could also be assigned to variables in a separate resource file like keywords. That resource file can then be importesd using *Resource* keyword under *** Settings ***
    Open Application    ${remoteURL}    platformName=${platform_name}    platformVersion=${platform_version}    deviceName=${device_name}    browserName=${browser_name}    autoAcceptAlerts=true    locationServicesAuthorized=true
    AppiumLibrary.Go To Url    https://www.google.com
    Wait Until Element Is Visible    name=q
    Input Text    name=q    cheese
    Switch Context
    Click Element    name=Search
    Switch Context
    Wait Until Page Contains Element    css=h3>div
    ${content}    Get Element Attribute    css=h3>div    textContent
    Should be equal    More results    ${content}
