*** Settings ***
Documentation     A test suite with a single test for NNC :: Login
...               Created by hats' Robotcorder
Library           Selenium2Library    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
NNC :: Login test
    Open Browser    https://actoneye.com/nnc/Login/    ${BROWSER}
    Input Text    //input[@name="username"]    jayasree.konigala@netenrich.com
    Click Element    //button[@id="loginid"]
    Input Text    //input[@name="Password"]    sreesree@12345
    Click Element    //span[@id="submitButton"]
    Input Text    xpath=(//input[@id="openTicket"])    30178437
    Click Element    //button[@class="btn btn-primary notes"]
    Click Element    //button[@class="btn btn-primary audit"]
    Click Element    //button[@class="btn btn-primary vendor"]
    Click Element    //button[@class="btn btn-primary integrationlog"]
    Click Element    //button[@class="btn btn-primary billing"]

    Close Browser