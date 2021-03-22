*** Settings ***
Library           SeleniumLibrary
Resource          ../../User_Keywords/Web_Resource.robot    # This imports a resource file which contains user keywords for the steps mentioned in TC001 Google Search

*** Variables ***
${url}            https://www.google.com
${browser}        chrome
${executable_path}    /usr/local/bin

*** Test Cases ***
TC001 Google Search
    [Documentation]    The test demonstrates google search functionality for web
    ...
    ...    * This test contains user keywords which are stored in a separate resource file in *User Keywords —> Web_Resource.robot*. The file is imported in Sample Test Suite using Resource keyword under *** Settings *** section
    [Setup]
    Given User navigates to Google Homepage
    When User searches for Cheese
    Then User should be able to validate that Show more button contains correct text
    [Teardown]    Close All Browsers
