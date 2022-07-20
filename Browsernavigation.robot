*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
BrowserNavigationTest
    open browser    https://www.google.com/     chrome
    maximize browser window
    ${location}=    get location
    log to console  ${location}
    sleep    3

    go to    https://www.facebook.com/
    ${location}=    get location
    log to console    ${location}
    sleep    3

    go back
     ${location}=    get location
    log to console    ${location}
    sleep    3
    close browser