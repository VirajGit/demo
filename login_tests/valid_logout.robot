
*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***


Logout
    [Setup]  User logs into the portal  demo  mode
    [Tags]  Application_Name:WebDemoOfTheMillenium  Version:1.0 (static)
    User logs out of the portal
    [Teardown]    Close Browser

*** Keywords ***
User logs into the portal

    [Arguments]  ${userName}  ${password}
    Open Browser To Login Page
    Input Username    ${userName}
    Input Password    ${password}
    Submit Credentials
    Welcome Page Should Be Open

User logs out of the portal
    Click element  link=logout


